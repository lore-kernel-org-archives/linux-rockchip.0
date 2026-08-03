Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 359FFC55179
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 14:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DtBvlzbT2CQebdM0S6AUin4GjEtBeUltUEcDO0JEkME=; b=DeX37BJLaAV4GW
	cxd3CLLQRHOPOJ0rDML/n0XpgiNI8USpR/f1eb/0tzHCX0ACD+sS505Wk1444Nby7d4mPuwSVfImq
	R03imD+ns1qk7uk8UAJiwGsP426n0GOpVFloi1hGsgVTr64gv9xqhwNK2k/TEFxwwFWLh9KQkJhsy
	lAjhrG11m6FXhlJrxOtt3JuEKnBN0VXKeemf7muSjAW1IF+1aHjJUQF3sVJB0aW76rw/1hTM4GsFi
	HyfTJ+ZCHiC9glp0aS/PSZJDc+IVWujy/BuLuhBuXcnwqIpwuwmvu54ku6xFdFHQahEnLKw39rDVm
	FrvG/mNOK1CBrv4rImow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqtNJ-0000000HIjB-3cjl;
	Mon, 03 Aug 2026 14:10:41 +0000
Received: from mail-oo1-xc35.google.com ([2607:f8b0:4864:20::c35])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqtNH-0000000HIhX-35XL
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Aug 2026 14:10:41 +0000
Received: by mail-oo1-xc35.google.com with SMTP id 006d021491bc7-6acbbcd3798so2071113eaf.3
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Aug 2026 07:10:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1785766238; x=1786371038; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=zn8Ob/lYJrtvb6nSm3sGvGJOnXJvrAS/9UT9vBl2poM=;
        b=PLaM+gN7FvbUkrnWIQkjPejKcgVS1XMn2B4KNH7oNVRdUCDMhaC/HWO2/uniJvZLBt
         Z+/6v5/KRF88uyhz/UEvmZYcneNikdkDGG7ANhylX+PFN7Fnx6teaE009R5z8/VsiC23
         qRccOSp6gvCIpNlowWQ+2ibHxjwtzQ9XbNwwQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785766238; x=1786371038;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=zn8Ob/lYJrtvb6nSm3sGvGJOnXJvrAS/9UT9vBl2poM=;
        b=muyB4lM9SaCZvOUnDjhxfCYVbmRQNoWsXeYaz9n/+GWX3EDRTlWww9C5nOC1rZF2mM
         OrxLaY9K9hYtCqfcJhUIcmmWipKRyQpRhA9aXCX7OOyQ7+5NqBPE1HLyCsTuSUcVMLYr
         Uy2ZdQA7zv106ZJ4TG2qxj8jSMJP6k5KlDiH0kN7CmTrb34wP6vTkDYCtzWW4242vLeN
         wmyeLrwAly0EIMKPeF9o9k/OJi+nEEsKAyeQIYpAL62fcs9B9o6VKWA3ufcm1lDyq9wf
         6ypNGOtNC9q0cuxozkHwCkzE8V21ZbHNPiAiIA6eb4TeNIYOA4HjHEcqztrFRRSIxHqT
         9uZQ==
X-Forwarded-Encrypted: i=1; AHgh+RpCJwPqUaW0Nnq40+jetmL2TlhFxq4SKXi1bnQKBq37t8CYyHJNuu5eCgzIcbhyUuvQdbQ89fJ/ucDyGeppCQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxPc5El4z5paKZdoZ7qAXbYrj9+ROFNY6lwbI23IamSkQB6LeIb
	RIulZluCJHaVDWM0BmsobUcvcqFykojLnYAOt0XoSM709hXEMZ8kdrT9U2XNwnw4Tg==
X-Gm-Gg: AR+sD103toZB70v/iywPZ57zBs30HxFQH+Wfvr/FkOsmOju7RIlIl4vrzKWHOYMs3RD
	a27MRCd/gNGpc7dBuC2+6rOr+PCQi26GTwu1ipzJrBEjoR7mqC1Z29eVMXUm8eHgi0DgVF5ZKJN
	03smloWB3jUKdN7Yf75UMTRTc0NxYXFXU9JoNUMwGY01HMtPuuEDp6Xw10hRhVRNKvS+rJrTsgV
	Yh82SGq9oga0imHfW94GS2nmfecTJjKhV3FDQ1XEMD/rqWw7/U21dv9F1xjyf8OHdLHrO9Ljroa
	sdvLotqhxazJXK1ATw1dJtEm/tdPBbJCQH3Hs4Y+i0Xw3hRWGo7hmiFlZhszeVi9MEzIZTSgajC
	g+dojijBX8nIKYEr4qriJEc2/9bjsGkZ//te2LVUpuowzeatXU0rYM47VHfnN/wXoKcsN72yg1k
	d0sCoJDUc2WZL16CnSj9A4N3x6dYXLl1F90GG/o+ySp2wu213VmlclRkw=
X-Received: by 2002:a05:6820:4a08:b0:6a1:5b63:2ae2 with SMTP id 006d021491bc7-6ae4334a975mr12207278eaf.29.1785766238536;
        Mon, 03 Aug 2026 07:10:38 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6ae3a0c9162sm6526695eaf.11.2026.08.03.07.10.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2026 07:10:37 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Linus Walleij <linusw@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-gpio@vger.kernel.org,
	Vladislav Leonov <vlad@zlab.su>,
	Jonas Karlman <jonas@kwiboo.se>,
	Simon Glass <sjg@chromium.org>,
	Jeffy Chen <jeffy.chen@rock-chips.com>,
	huang lin <hl@rock-chips.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] pinctrl: rockchip: Reset the pin count when recalculating SoC data
Date: Mon,  3 Aug 2026 08:10:23 -0600
Message-ID: <20260803081024.1.72f72067ea890a9eac79d63bf655738bec374dfd@changeid>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260803141028.710706-1-sjg@chromium.org>
References: <20260803141028.710706-1-sjg@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_071039_798231_DC4E226E 
X-CRM114-Status: GOOD (  12.78  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

rockchip_pinctrl_get_soc_data() mutates the static per-SoC data. The
iomux and drive offsets are recalculated idempotently, since a rerun
anchors at the values calculated before, but the total pin count only
accumulates: each run adds every bank's pins again. When the probe is
deferred and runs a second time, nr_pins doubles and every bank's
pin_base shifts, so later pin lookups resolve to the wrong bank and
the wrong registers.

Reset the pin count at the start of the calculation, so that a rerun
produces the same values.

This is verified on a Luckfox Pico Mini B (RV1103, with the pending
RV1106 series applied) by forcing the probe to defer once: without
this patch the second probe calculates nr_pins=304 instead of 152 and
no GPIO bank comes up; with it the recalculation matches the first
run and all banks work.

Fixes: d3e5116119bd ("pinctrl: add pinctrl driver for Rockchip SoCs")
Link: https://sashiko.dev/#/patchset/20260729132736.3807082-1-sjg@chromium.org?part=4
Assisted-by: Claude:claude-opus-5
Signed-off-by: Simon Glass <sjg@chromium.org>

---

 drivers/pinctrl/pinctrl-rockchip.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 7e0fcd45fd26..8bfc7ab5de15 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -4296,6 +4296,16 @@ static struct rockchip_pin_ctrl *rockchip_pinctrl_get_soc_data(
 	pmu_offs = ctrl->pmu_mux_offset;
 	drv_pmu_offs = ctrl->pmu_drv_offset;
 	drv_grf_offs = ctrl->grf_drv_offset;
+
+	/*
+	 * This function mutates the static per-SoC data. Most of it is
+	 * idempotent: recalculated iomux and drv offsets anchor at the
+	 * values calculated by a previous run. The pin count is not, so
+	 * reset it here; otherwise it accumulates when the probe runs
+	 * again after a probe deferral, shifting every bank's pin_base.
+	 */
+	ctrl->nr_pins = 0;
+
 	bank = ctrl->pin_banks;
 	for (i = 0; i < ctrl->nr_banks; ++i, ++bank) {
 		int bank_pins = 0;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
