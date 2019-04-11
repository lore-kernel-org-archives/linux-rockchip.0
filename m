From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: bulk convert gpios to their
 constant counterparts
Date: Thu, 11 Apr 2019 14:40:24 +0200
Message-ID: <1667071.gWk23hUjN5@phil>
References: <20190402121852.14442-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20190402121852.14442-1-heiko@sntech.de>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: linux-rockchip@lists.infradead.org
Cc: robin.murphy@arm.com, briannorris@chromium.org, dianders@chromium.org, Emil Renner Berthing <esmil@mailme.dk>, ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 2. April 2019, 14:18:51 CEST schrieb Heiko Stuebner:
> Rockchip SoCs use 2 different numbering schemes. Where the gpio-
> controllers just count 0-31 for their 32 gpios, the underlying
> iomux controller splits these into 4 separate entities A-D.
> 
> Device-schematics always use these iomux-values to identify pins,
> so to make mapping schematics to devicetree easier Andy Yan introduced
> named constants for the pins but so far we only used them on new
> additions.
> 
> Using a sed-script created by Emil Renner Berthing bulk-convert
> the remaining raw gpio numbers into their descriptive counterparts
> and also gets rid of the unhelpful RK_FUNC_x -> x and RK_GPIOx -> x
> mappings:
> 
> /rockchip,pins *=/bcheck
> b # to end of script
> :append-next-line
> N
> :check
> /^[^;]*$/bappend-next-line
> s/<RK_GPIO\([0-9]\) /<\1 /g
> s/<\([^ ][^ ]*  *\)0 /<\1RK_PA0 /g
> s/<\([^ ][^ ]*  *\)1 /<\1RK_PA1 /g
> s/<\([^ ][^ ]*  *\)2 /<\1RK_PA2 /g
> s/<\([^ ][^ ]*  *\)3 /<\1RK_PA3 /g
> s/<\([^ ][^ ]*  *\)4 /<\1RK_PA4 /g
> s/<\([^ ][^ ]*  *\)5 /<\1RK_PA5 /g
> s/<\([^ ][^ ]*  *\)6 /<\1RK_PA6 /g
> s/<\([^ ][^ ]*  *\)7 /<\1RK_PA7 /g
> s/<\([^ ][^ ]*  *\)8 /<\1RK_PB0 /g
> s/<\([^ ][^ ]*  *\)9 /<\1RK_PB1 /g
> s/<\([^ ][^ ]*  *\)10 /<\1RK_PB2 /g
> s/<\([^ ][^ ]*  *\)11 /<\1RK_PB3 /g
> s/<\([^ ][^ ]*  *\)12 /<\1RK_PB4 /g
> s/<\([^ ][^ ]*  *\)13 /<\1RK_PB5 /g
> s/<\([^ ][^ ]*  *\)14 /<\1RK_PB6 /g
> s/<\([^ ][^ ]*  *\)15 /<\1RK_PB7 /g
> s/<\([^ ][^ ]*  *\)16 /<\1RK_PC0 /g
> s/<\([^ ][^ ]*  *\)17 /<\1RK_PC1 /g
> s/<\([^ ][^ ]*  *\)18 /<\1RK_PC2 /g
> s/<\([^ ][^ ]*  *\)19 /<\1RK_PC3 /g
> s/<\([^ ][^ ]*  *\)20 /<\1RK_PC4 /g
> s/<\([^ ][^ ]*  *\)21 /<\1RK_PC5 /g
> s/<\([^ ][^ ]*  *\)22 /<\1RK_PC6 /g
> s/<\([^ ][^ ]*  *\)23 /<\1RK_PC7 /g
> s/<\([^ ][^ ]*  *\)24 /<\1RK_PD0 /g
> s/<\([^ ][^ ]*  *\)25 /<\1RK_PD1 /g
> s/<\([^ ][^ ]*  *\)26 /<\1RK_PD2 /g
> s/<\([^ ][^ ]*  *\)27 /<\1RK_PD3 /g
> s/<\([^ ][^ ]*  *\)28 /<\1RK_PD4 /g
> s/<\([^ ][^ ]*  *\)29 /<\1RK_PD5 /g
> s/<\([^ ][^ ]*  *\)30 /<\1RK_PD6 /g
> s/<\([^ ][^ ]*  *\)31 /<\1RK_PD7 /g
> s/<\([^ ][^ ]*  *[^ ][^ ]*  *\)0 /<\1RK_FUNC_GPIO /g
> s/<\([^ ][^ ]*  *[^ ][^ ]*  *\)RK_FUNC_\([1-9]\) /<\1\2 /g
> 
> Suggested-by: Emil Renner Berthing <esmil@mailme.dk>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

applied both patches for 5.2
