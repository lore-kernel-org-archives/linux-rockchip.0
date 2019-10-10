From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: add cr50 tpm to rk3399-gru scarlet
 and bob
Date: Thu, 10 Oct 2019 23:21:13 +0200
Message-ID: <1981411.DENka8z7px@phil>
References: <20180822120925.12388-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20180822120925.12388-1-heiko@sntech.de>
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
Cc: amstan@chromium.org, sboyd@kernel.org, briannorris@chromium.org, dianders@chromium.org, smbarber@chromium.org, apronin@chromium.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 22. August 2018, 14:09:25 CEST schrieb Heiko Stuebner:
> Scarlet and Bob use the Google-developed cr50 chip to do things
> like TPM and closed-case-debugging.
> 
> Add the nodes describing the cr50 and its spi-connection.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

with the cr50 now having reached a maintainer tree,
applied for 5.5
