From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v6 0/3] ARM: rockchip: fix the SMP
Date: Tue, 09 Jun 2015 22:04:08 +0200
Message-ID: <4374173.2rp7Jv3Cd5@diego>
References: <1433843400-24831-1-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1433843400-24831-1-git-send-email-wxt@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Caesar Wang <wxt@rock-chips.com>
Cc: dianders@chromium.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-rockchip@lists.infradead.org, Russell King <linux@arm.linux.org.uk>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Caesar,


Am Dienstag, 9. Juni 2015, 17:49:56 schrieb Caesar Wang:
> Verified on url =
>    
> https://chromium.googlesource.com/chromiumos/third_party/kernel/+/chromeos-> 3.14 Tested by 179200 cycles are pass with CPU up/dowm test scripts.
> 
> Changes in v6:
> - As Russell suggestion, detect whether of_reset_control_get() failed
> - add the comment for 1ms delay.
> Series-changes: 5
> - back to v2 cpu on/off flow, As Heiko point out in patch v3.
> - delay more time in rockchip_boot_secondary().
>   From CPU up/down tests, Needed more time to complete CPU process.
>   In order to ensure a more, Here that be delayed 1ms.
> Series-changes: 4
> - Add reset_control_put(rstc) for the non-error case.
> Series-changes: 3
> - FIx the PATCH v2, it doesn't work on chromium 3.14.
> Series-changes: 2
> - As Heiko suggestion, re-adjust the cpu on/off flow.
>   CPU off:
>     reset_control_assert
>     regmap_update_bits(pmu, PMU_PWRDN_CON, BIT(pd), BIT(pd))
>     wait_for_power_domain_to_turn_off
>   CPU on:
>     regmap_update_bits(pmu, PMU_PWRDN_CON, BIT(pd), 0)
>     wait_for_power_domain_to_turn_on
>     reset_control_deassert
> - Fix the delay 1ms describing.
> Series-changes: 5
> - Fix the patch decription.
> - Add the changelog.
> Series-changes: 2
> - As Kever points out, Fix the subject typo WFI/WFE.
> - fix the commnet Unified format.
> Series-changes: 5
> - Add the changelog.
> Series-changes: 2
> - Use the checkpatch.pl -f --subjective to check.
> 
> Caesar Wang (3):
>   ARM: rockchip: fix the CPU soft reset
>   ARM: rockchip: ensure CPU to enter WFI/WFE state
>   ARM: rockchip: fix the SMP code style

the series looks good to me now. I'll give it another day or so before 
applying, just in case Russell wants to provide additional comments.


Heiko
