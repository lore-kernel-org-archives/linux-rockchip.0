Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA3CAC624D3
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2026 13:08:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y9rIUJD9mF7QccMcll3Ot+r6rV+qx5TOADFNoP8yi4E=; b=qnMt3mMlEpnZBt
	0FrF38YZX5s5Uy5kzjoYllIq9cGYqkP7BuZ1fkpARt4lGJEDX9ledaJTQomohYxkYXc83epu8uxZK
	u6CosxTUg+YlkCmwbJmCb82+O9AMQbfhtRER2PVolPQ8KTrRCeJzpZSNoTuTwGsypcFJ/CLwDYT4V
	WshkJICt7dTmGyufnj/PpGac576XKqFD+788C7bVyNuYPjfbe91WgIsww7NCqy+7aQo2MNnInj9zd
	M57VCtJJBDE9wNtP+IkWFg15b4jVHdu9zmmx/2z7QJvPVY/3oug3x1H7D9/qsWB4KA47EhE3dURAP
	HxZgbgv9aWR9MDTKa9Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1khI-0000000El67-3nft;
	Wed, 02 Sep 2026 13:08:12 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1khG-0000000El3D-2HuW
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Sep 2026 13:08:12 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-4843e9c5960so1080910f8f.0
        for <linux-rockchip@lists.infradead.org>; Wed, 02 Sep 2026 06:08:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1788354488; x=1788959288; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=aijYbYyh0GYERanA0MNAQuC04tkRJrLzY82fVV+zmsc=;
        b=KEayWhQJNqmZvwG/XgO5xSGaDBvxQRKNO3yLG1Yye2r6HzLE699eiK1T5Dy2ngkv+W
         IewmprVKohy1C7HjI8GCeOEOzAsPQqfACMGOgk3PVaVxG2b1PJlWHTsq7HeZRlXzUz5V
         uz0IGhO3zRRl+9qljVwSL/Xly8KfsqStHlDKpbOglKefD4YFuBtdeV9Mt/I1WkdaSJA5
         qpwPR3Iy+Up4IIkMI4AVu5HU4XWNZ/NBwpLPsflhfq49Luzt6vWMl3uwavjzFSWFMycw
         ZYtq2BxDYajeGn1F3qzBcsm0WHwuOFjbH+RvnIG/TxReOvG2Di5hh0rBFnSgxburR9JI
         hCfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788354488; x=1788959288;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=aijYbYyh0GYERanA0MNAQuC04tkRJrLzY82fVV+zmsc=;
        b=Z1qGFKEhqCjL4K3OeI/UrhISsDUZVbaCQ7HcDdUG9+XhW6WkRwB4JfuIFPmYM4iToE
         YkTDIA7VTMgn7tmDfLZz9keZav8c2817C+NFbziVjc1d4I9gjOsN1m0jmWeMGJe20/jY
         uqYO/FCR1V/SLFNm5hMt18P2c6MXEakxwDqtXSMjlUEhYrxm1GpDxEjyTP3QCGVl5mUp
         oPl1fPxeTor2vDjj2XAyUHT455HCmdvECKUp/A3IsNCxr6/ZZAQ+dlUUUixLlfu457WI
         e9Ipeu1XvzG3xu3sPFk0tpgEDGMEQmRRDMyHvnYw3orZkY6GK/WNJRdtTCRNpuLff/xJ
         dASQ==
X-Forwarded-Encrypted: i=1; AKwUvBxVfEKoxzRReqaetcwxAmlPiWfeYZE/+9pCUO7moCAjfBRJRGoyxllUHxyJdpHSLELTHVk5iHSOoEEtNQCodg==@lists.infradead.org
X-Gm-Message-State: AFuF++kGlyCfFeU21zEDlQEvrgVozm25m5xylGaPqTojr+BG4XmErOJG
	U0GsXDuApwcz8aWNqCBPohrZEEEeUhA8A3CcHjc9TUyM25XZxCb27f3R5nzCZNeeLpc=
X-Gm-Gg: AYBFou3RWRzWjUnluBFo3R9Ve4dq8bJ3hTq43mtl3jIjiR48wHWc452+KCKqXDGOsHj
	6G04Ptjqjq+5wRzfHTuRvHH6c10pK/McOeObDo+bhVTInjl4FGoKLxQ/L+7+LIluPW39Xkw7uHZ
	IlyuhGxV/n8ttRsPL0im1odBCsi5HdHp5zDU4oMiibX0BaDTAoTKGst/Mvu84MO68k/WYtiFw5n
	/qzDDUPJTPRAzPaTw5YE7CmDJzXDSZj8M6fVajSjS4tdSdwpPwdMxPJHdFO4dkd4eQcleiJO9W+
	ZsZJ5NaCiCSVwHhRiu8CPOMoOulyoxRsYawYttmKmNrRn+4oxFKQOtVfan04xWRu/eZVS49E6Nx
	v6GUHm8OkovnMLlrjEeAG21atHKT9WkItgw7sBarkDXCvEfYX2yYCYCnlhr/yVmb04F9JJ9etlE
	LNWnYsAm4tJbyLWTz+C8ItZ23FAvEaMEShSQxyQPuJ5vQlFPnYn5307eqvM0AVxEdWPwpOevUZR
	MxnejvzbrPZoc01ecd26Uy/jtTnWhRx8nqt/wAR7w==
X-Received: by 2002:a05:6000:4913:b0:47f:90df:4ec6 with SMTP id ffacd0b85a97d-48488deed8cmr9806707f8f.6.1788354488335;
        Wed, 02 Sep 2026 06:08:08 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-2-51-220-108.alshamil.net.ae. [2.51.220.108])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48448e72b5bsm6385800f8f.4.2026.09.02.06.08.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Sep 2026 06:08:06 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 02 Sep 2026 17:07:52 +0400
Subject: [PATCH v2 1/4] nvmem: rockchip-otp: Serialize reads
MIME-Version: 1.0
Message-Id: <20260902-rk3576-otp-cpuid-mac-v2-1-e4b7fe2ab13f@flipper.net>
References: <20260902-rk3576-otp-cpuid-mac-v2-0-e4b7fe2ab13f@flipper.net>
In-Reply-To: <20260902-rk3576-otp-cpuid-mac-v2-0-e4b7fe2ab13f@flipper.net>
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Michael Walle <michael@walle.cc>, Miquel Raynal <miquel.raynal@bootlin.com>, 
 Finley Xiao <finley.xiao@rock-chips.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 Alexey Charkov <alchark@flipper.net>, stable@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3090; i=alchark@flipper.net;
 h=from:subject:message-id; bh=qiqsPxlbHv2Ud+rite1LTKKz01hObwxA2+aJF+2hat8=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTNkN8s8+inzp11M5ymXJWy4XpYf/i/8cxf1m5/mQXsh
 aRs1jIrdExkYRDjYrAUU2SZ+22J7VQjvlm7PDy+wsxhZQIZIi3SwAAELAx8uYl5pUY6Rnqm2oZ6
 hkY6xjpGDFycAjDVE2cxMmzmnWlzfMcxzYX7rp1SnBL6gWnV0bVu6Yzf/5yOzFGoZLFkZFjpfeI
 Uf5NNt0u8iMEtAZGLW++d6WzISLG1divjZuR4xgQA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_060810_603505_ED1DA254 
X-CRM114-Status: GOOD (  17.74  )
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

The OTP controller is driven through a single set of registers holding a
state machine which has to be stepped through for every word read, yet
nothing keeps two readers out of each other's way. Concurrent reads
interleave, and the outcome is either a reader bailing out:

  rockchip-otp 2a580000.otp: timeout during read setup

or, worse, one of them silently taking delivery of the other's data.

Reading two cells in parallel from userspace on RK3576 reproduces both
within 150 iterations - 53 read errors and 9 corrupted results, the latter
either losing their first word or, in one case, ending in the two bytes
which belong to the other reader's cell - whereas the same reads issued
sequentially never fail. Concurrency is not hypothetical here, as six
thermal sensors source their trim values from the OTP and reach the driver
straight from asynchronous driver probing.

Guard the read path with a mutex. Reads are the only way into the hardware,
as the driver registers no write callback, and they always run in process
context, so a plain mutex spanning the whole clock-enable, read,
clock-disable sequence is enough.

Fixes: 755864feb729 ("nvmem: add Rockchip OTP driver")
Cc: stable@vger.kernel.org
Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 drivers/nvmem/rockchip-otp.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/nvmem/rockchip-otp.c b/drivers/nvmem/rockchip-otp.c
index 2c0feb036f3f..f8a8c7cece98 100644
--- a/drivers/nvmem/rockchip-otp.c
+++ b/drivers/nvmem/rockchip-otp.c
@@ -12,6 +12,7 @@
 #include <linux/io.h>
 #include <linux/iopoll.h>
 #include <linux/module.h>
+#include <linux/mutex.h>
 #include <linux/nvmem-provider.h>
 #include <linux/reset.h>
 #include <linux/slab.h>
@@ -80,6 +81,8 @@ struct rockchip_otp {
 	void __iomem *base;
 	struct reset_control *rst;
 	const struct rockchip_data *data;
+	/* Serializes access to the OTP controller state machine */
+	struct mutex mutex;
 	struct clk_bulk_data clks[];
 };
 
@@ -272,10 +275,12 @@ static int rockchip_otp_read(void *context, unsigned int offset,
 	if (!otp->data || !otp->data->reg_read)
 		return -EINVAL;
 
+	mutex_lock(&otp->mutex);
+
 	ret = clk_bulk_prepare_enable(otp->data->num_clks, otp->clks);
 	if (ret < 0) {
 		dev_err(otp->dev, "failed to prepare/enable clks\n");
-		return ret;
+		goto unlock;
 	}
 
 	offset += otp->data->read_offset;
@@ -308,6 +313,9 @@ static int rockchip_otp_read(void *context, unsigned int offset,
 err:
 	clk_bulk_disable_unprepare(otp->data->num_clks, otp->clks);
 
+unlock:
+	mutex_unlock(&otp->mutex);
+
 	return ret;
 }
 
@@ -431,6 +439,11 @@ static int rockchip_otp_probe(struct platform_device *pdev)
 
 	otp->data = data;
 	otp->dev = dev;
+
+	ret = devm_mutex_init(dev, &otp->mutex);
+	if (ret)
+		return ret;
+
 	otp->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(otp->base))
 		return dev_err_probe(dev, PTR_ERR(otp->base),

-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
