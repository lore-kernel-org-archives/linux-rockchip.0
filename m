Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88BABCD98DE
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jun 2026 04:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Rh+mTFFCRNSYUmsyFQDV0IOs+jzS6nxYr1aCKmcM+og=; b=12rn7cLc38Ebx/
	UlS9jyxJiPGdNu+XiW1gSsyyn+viyHHg5/7wGt1yOJAEGdlxA+rWBhMeN2aUv/gO4k5V+iZCU5xkT
	fEaPJ2xs0zFyl/mjeeV187iNWy7HSZ2bX9aAAnUKdgQblMhHCzBrgYt3IaXEjJtO+jkmCsD+OURhM
	H9aDHrnOijc8/IwdRGB3rH755V2Wa5JxKy8IKuRsiv+5SRx4ij8lMbq/XvSOG+CG42TfW+AhqCbAa
	/63pgEIN2PQNBuYu25QGHaILMnjeT1fyNld/tht6dGcRBQXIAuPjBZZsdHdGuq/6jot/SKPh3a5g2
	stHQI8xd/5Yy7PxszHZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wa43w-00000000bDG-1vzV;
	Thu, 18 Jun 2026 04:09:08 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wa43u-00000000bCZ-1D36
	for linux-rockchip@lists.infradead.org;
	Thu, 18 Jun 2026 04:09:07 +0000
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-c899550c840so75525a12.3
        for <linux-rockchip@lists.infradead.org>; Wed, 17 Jun 2026 21:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781755745; x=1782360545; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mf3jJNGCHMNwyX+15Gf3qCeUSoD/AqOS50pGRceH38o=;
        b=mz420ZTSMzMcSYAhtEmiD4sEAEgXnUp8WDJLC+5SmUmZ+p1ayPCx8KXcBWztnqwyWQ
         jUVizBMJtlFCDTi3G0rg0pKd4pVSoRTGVCpJpM81+SRkAeIELEDhjidh11zyhn9l4DBY
         2FRvazgSolnEcWy5eHBNoxhlYD1IOder+7lX07CJx0+AFdRHnZcTzpj8ONy3ozHB/Z+Z
         9xzQTkKz9M2RpiKbadMNWcaBTqzqKXbww9siIHkMOk6FrtMgXnVg/+aPvCrD4Bshj83l
         28jYdg3sOBYPLcD+3QVr095q7H7L8OM5oHdM7WD9uSxZCB0QbMo7SoZzbN8WA5yaYFD+
         Ovrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781755745; x=1782360545;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mf3jJNGCHMNwyX+15Gf3qCeUSoD/AqOS50pGRceH38o=;
        b=g5nCjBt/04rFBKNyB9muJxhC2ei1j6pog0rEhI59dVjsvAAu4pAP/GHk39BHVKPnpK
         fqK7z7PMB8PFU8tixS9v5iuzTV2EwzlDxIrTue6H5DBwZwhvqzUZGONYubtnJeZ2fkKM
         DVhmGwWv7I5ryIya+iTZ33HQ4xPXgT0jAi9ptOEefgAdO0ElFtSKRvCPmgE1rFgVfLGd
         C5RGZkWGDJC9ZtkJBx2oOxz6leiOC3ilW4eTdvivAd/YCpD9X/q/UOIwy2q7rdQ8yAiz
         0FccgYCsxtrK/OHZA1LgtofjCvbIj5wDDpz0mRLV0M2voGkR3g3+k0dP6lSgwccST/+Y
         DhPg==
X-Forwarded-Encrypted: i=1; AFNElJ/7KH3yosZd2MvXvHdypTn2IxnrPyJVUy0lCGAYG/0zU43Nht1JQk5pO6yF2SkxCrSdrJlwO9cg2bLWIeylqw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwKx1yk22o7paNUav7WWV5SjyVDaamshAsBADeMqVIjV32Sew3i
	wQ5dQn5tpiTdhlLCS4DesJ9RGvX0KrVeylBvvxbVqxl0YkL8wXKOhpd2
X-Gm-Gg: Acq92OGCVeCZlPyhuPSREtrJg3b81YVj0Ac4+pcgcc4CQspvbA2vjcF+r+Oqzse5+aE
	+VuzyA0hY1nURTVUZ9xBfVF/kZBPyEYvUxOKO0H2DOgtQyLnER6I5e2yMf3nDwNk/JnP31KuBhQ
	vM69kEO7Il5cKU3cqnXv5KBtCiAkaY6SflJ5rZYdGVDjtTE6L+pSDk4s50O4y9HsU8yqQSLD41b
	CI6NovM5xp+eGeykAMasUF+zfx/o0/k65cIz5aiNFLV0ZXRzt06OskziWPAK+VyaakHUgcq1q8H
	qp1zThrDW3WQbJZqZ2kQxcCo7vPeUxrHlEqIXNpOzp/b/w5mAIbZ4juyGXhAs8lIODsx9AxDMUf
	FlopgCp4KV487T6VJ/TM7AZWHFF5KnSrLPDID39dTvSQ0Yvh9/Yu9XbDWdvZHOfAdmojIBvCP3Y
	xKgo3qoqblACaqNi44g/ZIsX1Wut5/fX0W
X-Received: by 2002:a05:6a00:228f:b0:842:6c02:2fa4 with SMTP id d2e1a72fcca58-8452446d90amr7256898b3a.14.1781755745338;
        Wed, 17 Jun 2026 21:09:05 -0700 (PDT)
Received: from haichao.tail057a43.ts.net ([2001:da8:e000:1206:c19d:3f9a:e9ce:93d4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8434afc9fa8sm18077491b3a.32.2026.06.17.21.09.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jun 2026 21:09:05 -0700 (PDT)
From: Ruoyu Wang <ruoyuw560@gmail.com>
To: Srinivas Kandagatla <srini@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Ruoyu Wang <ruoyuw560@gmail.com>
Subject: [PATCH v2] nvmem: rockchip-otp: skip zero-byte reads
Date: Thu, 18 Jun 2026 12:08:59 +0800
Message-ID: <20260618040859.407326-1-ruoyuw560@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260617_210906_329709_1765EF1B 
X-CRM114-Status: GOOD (  10.48  )
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

nvmem_device_read() does not reject a zero-byte read before calling the
provider reg_read callback. rockchip_otp_read() then enables clocks and
dispatches to the SoC-specific callback.

Return 0 from rockchip_otp_read() before enabling clocks when bytes is
zero. This avoids hardware access for empty reads and prevents zero
counts from reaching the internal reg_read callbacks.

Fixes: 8ab099fafbbc ("nvmem: rockchip-otp: Add support for RK3588")
Suggested-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Ruoyu Wang <ruoyuw560@gmail.com>
---
v2:
- Handle empty reads in rockchip_otp_read() instead of initializing ret in
  rk3588_otp_read().

 drivers/nvmem/rockchip-otp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/nvmem/rockchip-otp.c b/drivers/nvmem/rockchip-otp.c
index 0ec78b5e19e7d..95685a9fcc77b 100644
--- a/drivers/nvmem/rockchip-otp.c
+++ b/drivers/nvmem/rockchip-otp.c
@@ -272,6 +272,9 @@ static int rockchip_otp_read(void *context, unsigned int offset,
 	if (!otp->data || !otp->data->reg_read)
 		return -EINVAL;
 
+	if (!bytes)
+		return 0;
+
 	ret = clk_bulk_prepare_enable(otp->data->num_clks, otp->clks);
 	if (ret < 0) {
 		dev_err(otp->dev, "failed to prepare/enable clks\n");
-- 
2.51.0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
