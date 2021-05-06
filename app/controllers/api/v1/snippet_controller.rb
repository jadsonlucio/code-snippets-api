module Api 
    module V1
        class SnippetController < ApplicationController
            rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
            def index
                snippets = Snippet.order("created_at")
                render json:{data:snippets}
            end
            
            def show
                snippet = Snippet.find(params[:id])
                render json:{data:snippet}
            end

            def create
                snippet = Snippet.new(filterValidParams)
                if snippet.save
                    render json:{data:snippet}
                else 
                    render json:{data:"snippet not created"}
                end
            end

            def update
                snippet = Snippet.find(params[:id])
                if snippet.update(filterValidParams)
                    render json:{data:snippet}
                end
            end

            def destroy
                snippet = Snippet.find(params[:id])
                if snippet.destroy
                    render json:{data: snippet}
                end
            end

            private 

            def filterValidParams
                params.permit(
                    :author, :source, :language, :code_snippet, :description,
                    :algorithm, :library, :categorty, :difficulty, :language_version,
                    :library_version, :dependencies
                )
            end

            def record_not_found
                render json:{data: "snippet not found"}, status: :not_found
            end
        end 
    end 
end

