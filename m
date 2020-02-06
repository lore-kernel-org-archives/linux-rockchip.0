From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v4 1/3] [media] dt-bindings: Add binding for rk3228 rga
Date: Thu, 6 Feb 2020 19:06:34 +0000
Message-ID: <20200206190634.GA10940@bogus>
References: <cover.1580768038.git.justin.swartz@risingedge.co.za>
 <4e66b3f029c56d7c7709d39ed15894b86f51fd37.1580768038.git.justin.swartz@risingedge.co.za>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-media-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <4e66b3f029c56d7c7709d39ed15894b86f51fd37.1580768038.git.justin.swartz@risingedge.co.za>
Sender: linux-media-owner@vger.kernel.org
Cc: Jacob Chen <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@collabora.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>, Justin Swartz <justin.swartz@risingedge.co.za>, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Mon,  3 Feb 2020 22:40:15 +0000, Justin Swartz wrote:
> Indicate that the rk3228 rga is compatible with that of the rk3288.
> 
> But if any rk3228-specific quirks are identified in future that
> require handling logic that differs from what is provided for the
> rk3288, then allow for the compatibility string "rockchip,rk3228-rga"
> to be matched instead of "rockchip,rk3288-rga".
> 
> Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
> ---
>  Documentation/devicetree/bindings/media/rockchip-rga.txt | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
