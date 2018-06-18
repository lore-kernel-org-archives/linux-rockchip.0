From: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH] ARM: dts: rockchip: convert rk3288 to operating-points-v2
Date: Mon, 18 Jun 2018 14:51:16 +0530
Message-ID: <20180618092116.gbxlb46cqihtlhwa@vireshk-i7>
References: <20180617131808.30283-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <20180617131808.30283-1-heiko@sntech.de>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, briannorris@chromium.org, dianders@chromium.org, linux-arm-kernel@lists.infradead.org, amstan@chromium.org
List-Id: linux-rockchip.vger.kernel.org

On 17-06-18, 15:18, Heiko Stuebner wrote:
> +	cpu_opp_table: cpu-opp-table {
> +		compatible = "operating-points-v2";
> +		opp-shared;
> +
> +		opp00 {

Most of the platforms write it as "opp-126000000". Maybe follow the same
nomenclature ?
-- 
viresh
