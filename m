From: Arend Van Spriel <arend.vanspriel@broadcom.com>
Subject: Re: [PATCH v2 0/9] brcmfmac: add support for BCM4359 SDIO chipset
Date: Tue, 24 Dec 2019 10:01:56 +0100
Message-ID: <3c42d6de-670d-fee8-aa81-99f44d447e87@broadcom.com>
References: <20191211235253.2539-1-smoch@web.de>
 <D1B53CE9-E87C-4514-A2D7-0FE70A4D1A5D@gmail.com>
 <cb3ac55f-4c8f-b0a0-41ee-f16b3232c87e@web.de>
 <47DB71CE-ACC4-431D-9E66-D28A8C18C0A4@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <47DB71CE-ACC4-431D-9E66-D28A8C18C0A4@gmail.com>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Christian Hewitt <christianshewitt@gmail.com>, Soeren Moch <smoch@web.de>
Cc: brcm80211-dev-list.pdl@broadcom.com, Heiko Stuebner <heiko@sntech.de>, Neil Armstrong <narmstrong@baylibre.com>, netdev@vger.kernel.org, linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, brcm80211-dev-list@cypress.com, Kalle Valo <kvalo@codeaurora.org>
List-Id: linux-rockchip.vger.kernel.org

On 12/22/2019 5:35 AM, Christian Hewitt wrote:
> 
>> On 19 Dec 2019, at 2:04 am, Soeren Moch <smoch@web.de> wrote:
>>
>> I guess you need similar enhancements of the board device tree as in
>> patch 8 of this series for your VIM3 board.
> 
> Wider testing now points to a known SDIO issue (SoC bug) with Amlogic G12A/B hardware. The merged workaround for the bug was only tested with bcmdhd and brcmfmac may require tweaking as the same issue exhibits on an Amlogic G12B device with BCM4356 chip. Testing the series with Amlogic GXM (older) and SM1 (newer) hardware to exclude the SoC bug shows everything working as expected.

Hi Christian,

Can you elaborate on the "known SDIO issue"? Is it an issue with ADMA or 
something else. I am asking because there is a workaround in brcmfmac to 
avoid scatter-gather lists, which may or may not address the issue.

Regards,
Arend
