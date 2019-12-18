From: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v2 1/9] brcmfmac: reset two D11 cores if chip has two D11
 cores
Date: Wed, 18 Dec 2019 19:08:18 +0000 (UTC)
Message-ID: <20191218190818.6E8E1C433CB@smtp.codeaurora.org>
References: <20191211235253.2539-2-smoch@web.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191211235253.2539-2-smoch@web.de>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
Cc: brcm80211-dev-list.pdl@broadcom.com, Arend van Spriel <arend.vanspriel@broadcom.com>, Heiko Stuebner <heiko@sntech.de>, netdev@vger.kernel.org, Chi-Hsien Lin <chi-hsien.lin@cypress.com>, linux-wireless@vger.kernel.org, Hante Meuleman <hante.meuleman@broadcom.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Soeren Moch <smoch@web.de>, Wright Feng <wright.feng@cypress.com>, brcm80211-dev-list@cypress.com, linux-arm-kernel@lists.infradead.org, Franky Lin <franky.lin@broadcom.com>
List-Id: linux-rockchip.vger.kernel.org

Soeren Moch <smoch@web.de> wrote:

> From: Wright Feng <wright.feng@cypress.com>
> 
> There are two D11 cores in RSDB chips like 4359. We have to reset two
> D11 cores simutaneously before firmware download, or the firmware may
> not be initialized correctly and cause "fw initialized failed" error.
> 
> Signed-off-by: Wright Feng <wright.feng@cypress.com>
> Signed-off-by: Soeren Moch <smoch@web.de>
> Reviewed-by: Chi-Hsien Lin <chi-hsien.lin@cypress.com>

7 patches applied to wireless-drivers-next.git, thanks.

1b8d2e0a9e42 brcmfmac: reset two D11 cores if chip has two D11 cores
172f6854551d brcmfmac: set F2 blocksize and watermark for 4359
6647274ed995 brcmfmac: fix rambase for 4359/9
c12c8913d79c brcmfmac: make errors when setting roaming parameters non-fatal
d4aef159394d brcmfmac: add support for BCM4359 SDIO chipset
837482e69a3f brcmfmac: add RSDB condition when setting interface combinations
2635853ce4ab brcmfmac: not set mbss in vif if firmware does not support MBSS

-- 
https://patchwork.kernel.org/patch/11286565/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
