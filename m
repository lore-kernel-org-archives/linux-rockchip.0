From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v4 2/2] dt-bindings: clocks: rk3288: add rk3288w
 compatible
Date: Tue, 9 Jun 2020 16:47:16 -0600
Message-ID: <20200609224716.GA1646913@bogus>
References: <20200602080644.11333-1-mylene.josserand@collabora.com>
 <20200602080644.11333-3-mylene.josserand@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8bit
Return-path: <linux-clk-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200602080644.11333-3-mylene.josserand@collabora.com>
Sender: linux-clk-owner@vger.kernel.org
To: =?iso-8859-1?Q?Myl=E8ne?= Josserand <mylene.josserand@collabora.com>
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, kernel@collabora.com, heiko@sntech.de, mturquette@baylibre.com, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org, sboyd@kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, 02 Jun 2020 10:06:44 +0200, Mylène Josserand wrote:
> Add the possible compatible "rockchip,rk3288w-cru" that handles
> the difference between the rk3288 and the new revision rk3288w.
> 
> This compatible will be added by bootloaders.
> 
> Signed-off-by: Mylène Josserand <mylene.josserand@collabora.com>
> ---
>  .../devicetree/bindings/clock/rockchip,rk3288-cru.txt     | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
