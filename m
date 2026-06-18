Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F004CD98DE
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jun 2026 03:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:
	Cc:To:Subject:MIME-Version:Date:Message-ID:Content-Type:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PDfNojf7oDkYR6/a3bEpVRUGxX1jKx/fCX97D9huOcc=; b=aCKT3MIVbddXb2TRdIhgVmBfSU
	dlHYeQ5Mz3ubXLpbRyMwSb0uppIiSajAD/wfEkjKcfbgJeURsWosX9TTGrrMWJ3ITD6MttuZjwBBp
	ctSO4NT2sn5WHkfxM/+2BxP6/seoVDOsmmBJOmIo1B+uS6zpla/6hycgi5VyUccb/nACmweBBGZJX
	S3GJaUMzZ0JskYVtLNxMlDsLWr04+E6AgwKls//g4tlgWtJI4B1YbE0TaeYNZO8As7IqdP5/Z0P7J
	tRhlPmKU2UQ+uykcymyfCdVdOMunVOIhLN1eOYY82UQImRi3opvbjS/8Dg9Wma5joE1C0o67KeOlT
	ss0EuecQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wa3l6-00000000aLc-34JM;
	Thu, 18 Jun 2026 03:49:40 +0000
Received: from mail-m93188.xmail.ntesmail.com ([103.126.93.188])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wa3l2-00000000aKw-2O2w
	for linux-rockchip@lists.infradead.org;
	Thu, 18 Jun 2026 03:49:39 +0000
Received: from [172.16.12.74] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 42d9d9178;
	Thu, 18 Jun 2026 11:49:31 +0800 (GMT+08:00)
Content-Type: multipart/mixed; boundary="------------0byGaZfhP0nwQkXkBhqn2fRp"
Message-ID: <cb53e53e-6d28-4bf4-9d08-67317b874e46@rock-chips.com>
Date: Thu, 18 Jun 2026 11:49:31 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [REGRESSION][BISECTED] No display on rk3399-gru-kevin
To: Vicente Bergas <vicencb@gmail.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
References: <CAAMcf8CXfvzvEUyoASmp=6efRDNszyPJuFg0OU63Z7gT+oVQ8A@mail.gmail.com>
 <14488973.RDIVbhacDa@diego>
 <CAAMcf8DJ8rA5Paw0LONkhJwFxcMw0T2r_8kGj9fEVV=54==KtA@mail.gmail.com>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <CAAMcf8DJ8rA5Paw0LONkhJwFxcMw0T2r_8kGj9fEVV=54==KtA@mail.gmail.com>
X-HM-Tid: 0a9ed8d92a0f03a8kunm98f48e2b171af8
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZGk5IS1ZJHUgfS0hPS0
	9OQ05WFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=SUEBo/XO1mNO7kgNjAkP6fglTtOTuGq8VtCJ8PUtANwYsCVHLSX+jU8g7WF9VTC/O0Hl+/tvWnOYz0BITCVJ56iqFCGILX+GPim2u1qNBxuVK/tEVstokCy5DF8UKntLqwKwT1j2BfrlN/9MhV3Rk5hPXc+goaYaUhoA6Nn6jGo=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=RtKfxWgzacJHUnAQbaJ6L9BgDMhlr+JaUJ3nXGnudgU=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260617_204937_234011_C30D5FB8 
X-CRM114-Status: GOOD (  28.80  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This is a multi-part message in MIME format.
--------------0byGaZfhP0nwQkXkBhqn2fRp
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Vicente,

On 6/18/2026 7:15 AM, Vicente Bergas wrote:
> On Wed, Jun 17, 2026 at 10:45 AM Heiko Stübner <heiko@sntech.de> wrote:
>>
>> Hi Vicente,
>>
>> Am Mittwoch, 17. Juni 2026, 01:05:27 Mitteleuropäische Sommerzeit schrieb Vicente Bergas:
>>> Hello,
>>> there are two issues that result on a black screen on the rk3399-gru-kevin.
>>>
>>> The first one is due to:
>>> c8079f83e0bf312645050c17d9c87deb707369c1
>>> gpio: rockchip: convert to dynamic GPIO base allocation
>>
>> can you check that your kernel contains
>> "gpio: rockchip: Fix GPIO regression after conversion to dynamic base allocation"
>> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=5cd9c6d332f46d1de8b68117fe2a3f1b08ee80ff
> 
> Yes, that commit is in v7.1 and it indeed fixes the gpio issue.
> I tested reverting c8079f83 alone and reverting all three.
> Now i've tested only reverting 51eb548a and d84b087c, and it works.
> The thing is both bugs coexisted at some point and
> git bisect finds them in order.
> 
>>> Reverting this does not fix the problem as there is a second one:
>>> 51eb548ade20158b4f4f8693a95b1f31a2480e8e
>>> drm/bridge: analogix_dp: Apply DP helper API drm_dp_channel_eq_ok()
>>>
>>> That second one depends on:
>>> d84b087c7662dd65cd51b228219987c31b1cee02
>>> drm/bridge: analogix_dp: Apply DP helper APIs to get adjusted voltages
>>> and pre-emphasises
>>>
>>> Reverting all three commits from v7.1 make the display work again.
>>>
>>> Please, can this be resolved?
>>
>> and as Damon wrote, please provide logs, so we can see the actual problem
> 
> It is quite difficult to read the logs from a black screen...
> Jokes apart, here they are:
> 
> Relevant log entries:
> <6>[    0.043668] /dp@fec00000: Fixed dependency cycle(s) with /vop@ff8f0000
> <6>[    0.043735] /vop@ff8f0000: Fixed dependency cycle(s) with /dp@fec00000
> <6>[    0.044192] /dp@fec00000: Fixed dependency cycle(s) with /vop@ff900000
> <6>[    0.044250] /vop@ff900000: Fixed dependency cycle(s) with /dp@fec00000
> <6>[    0.045064] /vop@ff900000: Fixed dependency cycle(s) with /dp@ff970000
> <6>[    0.045122] /vop@ff8f0000: Fixed dependency cycle(s) with /dp@ff970000
> <6>[    0.045194] /dp@ff970000: Fixed dependency cycle(s) with /vop@ff8f0000
> <6>[    0.045264] /dp@ff970000: Fixed dependency cycle(s) with /vop@ff900000
> <6>[    0.058590] /dp@ff970000: Fixed dependency cycle(s) with /edp-panel
> <6>[    0.058733] /edp-panel: Fixed dependency cycle(s) with /dp@ff970000
> <6>[    0.101266] platform ff8f0000.vop: Adding to iommu group 2
> <6>[    0.102073] platform ff900000.vop: Adding to iommu group 3
> <3>[    0.105258] rockchip-dp ff970000.dp: no DP phy configured
> <3>[    0.308638] rockchip-dp ff970000.dp: no DP phy configured
> <6>[    0.310104] panfrost ff9a0000.gpu: clock rate = 500000000
> <6>[    0.311210] panfrost ff9a0000.gpu: mali-t860 id 0x860 major 0x2
> minor 0x0 status 0x0
> <6>[    0.311223] panfrost ff9a0000.gpu: features: 00000000,00000407,
> issues: 00000000,24040400
> <6>[    0.311231] panfrost ff9a0000.gpu: Features: L2:0x07120206
> Shader:0x00000000 Tiler:0x00000809 Mem:0x1 MMU:0x00002830 AS:0xff
> JS:0x7
> <6>[    0.311239] panfrost ff9a0000.gpu: shader_present=0xf l2_present=0x1
> <6>[    0.312664] [drm] Initialized panfrost 1.6.0 for ff9a0000.gpu on minor 0
> <3>[    0.624232] rockchip-dp ff970000.dp: no DP phy configured
> <3>[    0.639611] rockchip-dp ff970000.dp: no DP phy configured
> <6>[    0.641512] rockchip-drm display-subsystem: bound ff900000.vop
> (ops 0xffff800080c9a3c8)
> <6>[    0.642646] rockchip-drm display-subsystem: bound ff8f0000.vop
> (ops 0xffff800080c9a3c8)
> <4>[    0.643198] [drm] Missing drm_bridge_add() before attach
> <6>[    0.643238] rockchip-drm display-subsystem: bound ff970000.dp
> (ops 0xffff800080c9e840)
> <6>[    0.644029] rockchip-drm display-subsystem: bound fec00000.dp
> (ops 0xffff800080c9f0c8)
> <6>[    0.644102] cdn-dp fec00000.dp: [drm:cdn_dp_pd_event_work] Not
> connected; disabling cdn
> <6>[    0.644837] [drm] Initialized rockchip 1.0.0 for
> display-subsystem on minor 1
> <4>[    0.786773] panel-edp edp-panel: Skipping disable of already
> disabled panel
> <3>[    0.796517] rockchip-dp ff970000.dp: EQ Max loop
> <3>[    0.797745] rockchip-dp ff970000.dp: LT EQ failed!
> <3>[    0.797757] rockchip-dp ff970000.dp: eDP link training failed (-5)
> <3>[    0.797770] rockchip-dp ff970000.dp: unable to do link train, ret=-5
> <3>[    0.797783] [drm:analogix_dp_bridge_atomic_enable] *ERROR* dp
> commit error, ret = -5
> <3>[    0.797823] rockchip-dp ff970000.dp: failed to set bridge, retry: 0
> <4>[    0.797937] panel-edp edp-panel: Skipping disable of already
> disabled panel
> <3>[    0.808097] rockchip-dp ff970000.dp: EQ Max loop
> <3>[    0.809284] rockchip-dp ff970000.dp: LT EQ failed!
> <3>[    0.809299] rockchip-dp ff970000.dp: eDP link training failed (-5)
> <3>[    0.809314] rockchip-dp ff970000.dp: unable to do link train, ret=-5
> <3>[    0.809326] [drm:analogix_dp_bridge_atomic_enable] *ERROR* dp
> commit error, ret = -5
> <3>[    0.809353] rockchip-dp ff970000.dp: failed to set bridge, retry: 1
> <4>[    0.809463] panel-edp edp-panel: Skipping disable of already
> disabled panel
> <3>[    0.819481] rockchip-dp ff970000.dp: EQ Max loop
> <3>[    0.820745] rockchip-dp ff970000.dp: LT EQ failed!
> <3>[    0.820758] rockchip-dp ff970000.dp: eDP link training failed (-5)
> <3>[    0.820772] rockchip-dp ff970000.dp: unable to do link train, ret=-5
> <3>[    0.820781] [drm:analogix_dp_bridge_atomic_enable] *ERROR* dp
> commit error, ret = -5
> <3>[    0.820806] rockchip-dp ff970000.dp: failed to set bridge, retry: 2
> <4>[    0.820919] panel-edp edp-panel: Skipping disable of already
> disabled panel
> <3>[    0.831075] rockchip-dp ff970000.dp: EQ Max loop
> <3>[    0.832336] rockchip-dp ff970000.dp: LT EQ failed!
> <3>[    0.832346] rockchip-dp ff970000.dp: eDP link training failed (-5)
> <3>[    0.832356] rockchip-dp ff970000.dp: unable to do link train, ret=-5
> <3>[    0.832367] [drm:analogix_dp_bridge_atomic_enable] *ERROR* dp
> commit error, ret = -5
> <3>[    0.832388] rockchip-dp ff970000.dp: failed to set bridge, retry: 3
> <4>[    0.832496] panel-edp edp-panel: Skipping disable of already
> disabled panel
> <3>[    0.842613] rockchip-dp ff970000.dp: EQ Max loop
> <3>[    0.843754] rockchip-dp ff970000.dp: LT EQ failed!
> <3>[    0.843765] rockchip-dp ff970000.dp: eDP link training failed (-5)
> <3>[    0.843778] rockchip-dp ff970000.dp: unable to do link train, ret=-5
> <3>[    0.843791] [drm:analogix_dp_bridge_atomic_enable] *ERROR* dp
> commit error, ret = -5
> <3>[    0.843815] rockchip-dp ff970000.dp: failed to set bridge, retry: 4
> <3>[    0.843857] rockchip-dp ff970000.dp: too many times retry set
> bridge, give it up
> <6>[    0.854625] Console: switching to colour frame buffer device 300x100
> <6>[    0.887526] rockchip-drm display-subsystem: [drm] fb0:
> rockchipdrmfb frame buffer device
> 
> 

I have tested RK3399 IND EVB locally based on kernel v7.1, and eDP 
training completes successfully with normal display output with patch 
0001-arm64-dts-rockchip-Enable-eDP-display-for-RK3399-IND.patch applied.

 From your logs, the failure occurs during the EQ stage of eDP training. 
Please apply the additional patch 
0002-drm-bridge-analogix_dp-Read-CR-EQ-delay-from-DPCD-in.patch without 
reverting the two commits mentioned above (51eb548a and d84b087c), then 
retest to check if the issue gets improved.
(BTW: This is a test-only temporary patch with minor style flaws, but 
the patch needs upstreaming. I'll rework and send a formal version soon.)

If the problem persists, try adding a small delay at the location 
mentioned below for further verification:
diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c 
b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index a5dc645d7005..6dac3974acb5 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -401,6 +401,8 @@ static int 
analogix_dp_process_equalizer_training(struct analogix_dp_device *dp)

         analogix_dp_get_adjust_training_lane(dp, link_status);

+       usleep_range(5000, 6000);
+
         if (drm_dp_channel_eq_ok(link_status, lane_count)) {
                 /* traing pattern Set to Normal */
                 retval = analogix_dp_training_pattern_dis(dp);
(Note: This delay is only for testing purpose)

Best regards,
Damon

--------------0byGaZfhP0nwQkXkBhqn2fRp
Content-Type: text/plain; charset=UTF-8;
 name="0001-arm64-dts-rockchip-Enable-eDP-display-for-RK3399-IND.patch"
Content-Disposition: attachment;
 filename*0="0001-arm64-dts-rockchip-Enable-eDP-display-for-RK3399-IND.pa";
 filename*1="tch"
Content-Transfer-Encoding: base64

RnJvbSA4MjE4OGQ4YzE5MGFkOTI2ZjE0MTI2YTg4OTcwMWQ1NzEwOGE5MTdmIE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBEYW1vbiBEaW5nIDxkYW1vbi5kaW5nQHJvY2stY2hp
cHMuY29tPgpEYXRlOiBUaHUsIDE4IEp1biAyMDI2IDExOjMxOjE0ICswODAwClN1YmplY3Q6
IFtQQVRDSCAxLzJdIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBFbmFibGUgZURQIGRpc3BsYXkg
Zm9yIFJLMzM5OSBJTkQKIEVWQiBib2FyZAoKU2lnbmVkLW9mZi1ieTogRGFtb24gRGluZyA8
ZGFtb24uZGluZ0Byb2NrLWNoaXBzLmNvbT4KLS0tCiAuLi4vYm9vdC9kdHMvcm9ja2NoaXAv
cmszMzk5LWV2Yi1pbmQuZHRzICAgICAgfCA1MCArKysrKysrKysrKysrKysrKysrCiAxIGZp
bGUgY2hhbmdlZCwgNTAgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWV2Yi1pbmQuZHRzIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazMzOTktZXZiLWluZC5kdHMKaW5kZXggNzBhZWUxYWI5MDRjLi4z
ZDcyNDJkNDgwYWQgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszMzk5LWV2Yi1pbmQuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszMzk5LWV2Yi1pbmQuZHRzCkBAIC0xNyw2ICsxNywxNCBAQCBhbGlhc2VzIHsKIAogCWNo
b3NlbiB7CiAJCXN0ZG91dC1wYXRoID0gInNlcmlhbDI6MTUwMDAwMG44IjsKKwkJYm9vdGFy
Z3MgPSAicm9vdD1QQVJUVVVJRD02MTRlMDAwMC0wMDAwIHJvb3R3YWl0IjsKKwl9OworCisJ
YmFja2xpZ2h0OiBiYWNrbGlnaHQgeworCQljb21wYXRpYmxlID0gInB3bS1iYWNrbGlnaHQi
OworCQllbmFibGUtZ3Bpb3MgPSA8JmdwaW8xIDEzIEdQSU9fQUNUSVZFX0hJR0g+OworCQlw
b3dlci1zdXBwbHkgPSA8JnZjY19sY2Q+OworCQlwd21zID0gPCZwd20yIDAgMjUwMDAgMD47
CiAJfTsKIAogCXZjYzV2MF9zeXM6IHJlZ3VsYXRvci12Y2M1djAtc3lzIHsKQEAgLTI5LDYg
KzM3LDE3IEBAIHZjYzV2MF9zeXM6IHJlZ3VsYXRvci12Y2M1djAtc3lzIHsKIAkJcmVndWxh
dG9yLW1heC1taWNyb3ZvbHQgPSA8NTAwMDAwMD47CiAJCXJlZ3VsYXRvci1taW4tbWljcm92
b2x0ID0gPDUwMDAwMDA+OwogCX07CisKKwl2Y2NfbGNkOiB2Y2MtbGNkIHsKKwkJY29tcGF0
aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOworCQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2NfbGNk
IjsKKwkJc3RhcnR1cC1kZWxheS11cyA9IDwyMDAwMD47CisJCWVuYWJsZS1hY3RpdmUtaGln
aDsKKwkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MzMwMDAwMD47CisJCXJlZ3VsYXRv
ci1tYXgtbWljcm92b2x0ID0gPDMzMDAwMDA+OworCQlyZWd1bGF0b3ItYm9vdC1vbjsKKwkJ
dmluLXN1cHBseSA9IDwmdmNjNXYwX3N5cz47CisJfTsKIH07CiAKICZjcHVfYjAgewpAQCAt
NDkyLDMgKzUxMSwzNCBAQCAmdm9wbCB7CiAmdm9wbF9tbXUgewogCXN0YXR1cyA9ICJva2F5
IjsKIH07CisKKyZlZHAgeworCWZvcmNlLWhwZDsKKwlzdGF0dXMgPSAib2theSI7CisKKwlh
dXgtYnVzIHsKKwkJcGFuZWwgeworCQkJY29tcGF0aWJsZSA9ICJlZHAtcGFuZWwiOworCQkJ
YmFja2xpZ2h0ID0gPCZiYWNrbGlnaHQ+OworCQkJcG93ZXItc3VwcGx5ID0gPCZ2Y2NfbGNk
PjsKKwkJCW5vLWhwZDsKKworCQkJcG9ydCB7CisJCQkJcGFuZWxfaW5fZWRwOiBlbmRwb2lu
dCB7CisJCQkJCXJlbW90ZS1lbmRwb2ludCA9IDwmZWRwX291dF9wYW5lbD47CisJCQkJfTsK
KwkJCX07CisJCX07CisJfTsKK307CisKKyZlZHBfb3V0IHsKKwllZHBfb3V0X3BhbmVsOiBl
bmRwb2ludCB7CisJCXJlbW90ZS1lbmRwb2ludCA9IDwmcGFuZWxfaW5fZWRwPjsKKwl9Owor
fTsKKworJnB3bTIgeworCXBpbmN0cmwtMCA9IDwmcHdtMl9waW5fcHVsbF9kb3duPjsKKwlz
dGF0dXMgPSAib2theSI7Cit9OwotLSAKMi4zNC4xCgo=
--------------0byGaZfhP0nwQkXkBhqn2fRp
Content-Type: text/plain; charset=UTF-8;
 name="0002-drm-bridge-analogix_dp-Read-CR-EQ-delay-from-DPCD-in.patch"
Content-Disposition: attachment;
 filename*0="0002-drm-bridge-analogix_dp-Read-CR-EQ-delay-from-DPCD-in.pa";
 filename*1="tch"
Content-Transfer-Encoding: base64

RnJvbSA2MTE1YWJkYzAyNjE4ZDY5OWI1ODM2NGQxYmFlOTg1ZTQyMDAxZjg1IE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBEYW1vbiBEaW5nIDxkYW1vbi5kaW5nQHJvY2stY2hp
cHMuY29tPgpEYXRlOiBUaHUsIDE4IEp1biAyMDI2IDExOjMyOjIyICswODAwClN1YmplY3Q6
IFtQQVRDSCAyLzJdIGRybS9icmlkZ2U6IGFuYWxvZ2l4X2RwOiBSZWFkIENSL0VRIGRlbGF5
IGZyb20gRFBDRAogaW5zdGVhZCBvZiBmaXhlZCBkZWxheSB0aW1lCgpTaWduZWQtb2ZmLWJ5
OiBEYW1vbiBEaW5nIDxkYW1vbi5kaW5nQHJvY2stY2hpcHMuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5jIHwgMTAgKysrKysr
KystLQogZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3Jl
LmggfCAgMiArKwogMiBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgv
YW5hbG9naXhfZHBfY29yZS5jIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9h
bmFsb2dpeF9kcF9jb3JlLmMKaW5kZXggOGRlZTVmMmZiZGU1Li5hNWRjNjQ1ZDcwMDUgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBf
Y29yZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhf
ZHBfY29yZS5jCkBAIC0zMjUsNyArMzI1LDcgQEAgc3RhdGljIGludCBhbmFsb2dpeF9kcF9w
cm9jZXNzX2Nsb2NrX3JlY292ZXJ5KHN0cnVjdCBhbmFsb2dpeF9kcF9kZXZpY2UgKmRwKQog
CXU4IHZvbHRhZ2Vfc3dpbmcsIHByZV9lbXBoYXNpcywgdHJhaW5pbmdfbGFuZTsKIAl1OCBs
aW5rX3N0YXR1c1tEUF9MSU5LX1NUQVRVU19TSVpFXTsKIAotCXVzbGVlcF9yYW5nZSgxMDAs
IDEwMSk7CisJZHJtX2RwX2xpbmtfdHJhaW5fY2xvY2tfcmVjb3ZlcnlfZGVsYXkoJmRwLT5h
dXgsIGRwLT5kcGNkKTsKIAogCWxhbmVfY291bnQgPSBkcC0+bGlua190cmFpbi5sYW5lX2Nv
dW50OwogCkBAIC0zODYsNyArMzg2LDcgQEAgc3RhdGljIGludCBhbmFsb2dpeF9kcF9wcm9j
ZXNzX2VxdWFsaXplcl90cmFpbmluZyhzdHJ1Y3QgYW5hbG9naXhfZHBfZGV2aWNlICpkcCkK
IAl1MzIgcmVnOwogCXU4IGxpbmtfc3RhdHVzW0RQX0xJTktfU1RBVFVTX1NJWkVdOwogCi0J
dXNsZWVwX3JhbmdlKDQwMCwgNDAxKTsKKwlkcm1fZHBfbGlua190cmFpbl9jaGFubmVsX2Vx
X2RlbGF5KCZkcC0+YXV4LCBkcC0+ZHBjZCk7CiAKIAlsYW5lX2NvdW50ID0gZHAtPmxpbmtf
dHJhaW4ubGFuZV9jb3VudDsKIApAQCAtNzQ3LDYgKzc0NywxMiBAQCBzdGF0aWMgaW50IGFu
YWxvZ2l4X2RwX2NvbW1pdChzdHJ1Y3QgYW5hbG9naXhfZHBfZGV2aWNlICpkcCkKIHsKIAlp
bnQgcmV0OwogCisJcmV0ID0gZHJtX2RwX3JlYWRfZHBjZF9jYXBzKCZkcC0+YXV4LCBkcC0+
ZHBjZCk7CisJaWYgKHJldCA8IDApIHsKKwkJZGV2X2VycihkcC0+ZGV2LCAiZmFpbGVkIHRv
IHJlYWQgZHBjZCBjYXBzOiAlZFxuIiwgcmV0KTsKKwkJcmV0dXJuIHJldDsKKwl9CisKIAkv
KiBLZWVwIHRoZSBwYW5lbCBkaXNhYmxlZCB3aGlsZSB3ZSBjb25maWd1cmUgdmlkZW8gKi8K
IAlkcm1fcGFuZWxfZGlzYWJsZShkcC0+cGxhdF9kYXRhLT5wYW5lbCk7CiAKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5o
IGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmgK
aW5kZXggOTFiMjE1YzZhMGNmLi4yMWQ0ZDdmNGFkMzQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5oCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5oCkBAIC0xNzAs
NiArMTcwLDggQEAgc3RydWN0IGFuYWxvZ2l4X2RwX2RldmljZSB7CiAJYm9vbAkJCWZhc3Rf
dHJhaW5fZW5hYmxlOwogCWJvb2wJCQlwc3Jfc3VwcG9ydGVkOwogCisJdTggZHBjZFtEUF9S
RUNFSVZFUl9DQVBfU0laRV07CisKIAlzdHJ1Y3QgYW5hbG9naXhfZHBfcGxhdF9kYXRhICpw
bGF0X2RhdGE7CiB9OwogCi0tIAoyLjM0LjEKCg==

--------------0byGaZfhP0nwQkXkBhqn2fRp
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--------------0byGaZfhP0nwQkXkBhqn2fRp--

