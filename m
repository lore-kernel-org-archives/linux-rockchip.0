Return-Path: <SRS0=0WH/=FX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C0A9C0018C
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Dec 2020 11:27:20 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 042A5233CE
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Dec 2020 11:27:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 042A5233CE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=I8506XVOq3GYjlivebu367SeNvbInpMurSMImVNto2k=; b=eCC2AjYQvTW/uda4VudNrhs7fk
	Q7BXGInvT6iwku7YmHnbLhPB5ztO5SlO8h4DO7Yck2YT1/lY7jaysSwMxalrSDbntTk8MDpuMNt8x
	yWgNCJiq+Bw8uhsU8N7YOd/yFDNOgXWjQA8fbszqPEWrtbhUaqEPNBIp7YSkTu5Ujel55B4vHyuQc
	mMis5rxwH0rsQA2QdAgOFUQSZdut4RJk/i2V9Zu1DcH2JOcIlH6qIHAIPOW7BQMLai+0fyOwML+Ii
	8bHMx79RZl5gNh6MYup+RHralBVXJ4srrwDvXvME9TLU6Bfe3hWdjzRL96Tn9hUUzokHLoYTM2JUb
	hOyPeg7g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kqaOC-0006SG-QO; Sat, 19 Dec 2020 11:27:08 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kqaOA-0006RQ-Vn; Sat, 19 Dec 2020 11:27:07 +0000
Received: by mail-ej1-x62c.google.com with SMTP id q22so6968336eja.2;
 Sat, 19 Dec 2020 03:27:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=w7bfMZw3OlzVmdxPUhFwa+L05rVOJFwc17cC0KrbB70=;
 b=F9RtDOYXu0jJz54KjSoV1lnH2k/gT7gWse7vPCb66cSSJNaMIXUyTuWKtiRZl7/U3t
 6YRBwFwZLfyDqg3xraL55Q4kDFhNWIGvNRns7TMl+K8YXoQsCVBQt7rTi/3ncugYtWrx
 b0M0akUOlAjaukWeZn6Nk4i67DzZcm5xTcUDkn2QFZ0hwQYqmCtKM8lfKHlv9t4i35jc
 TE6IPU+JcWrOLPeooudYVq1cm+kxxmRkotT0D7JDqm5Ac2XvWp71HjoYzXX4+ja0Mp9s
 16HXh25Uy13BdxjM67wa1sB1C6ck0lu+mlUWSdhC6e7z1EzBgILMZtfCtFSPv0khHVap
 6Wpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=w7bfMZw3OlzVmdxPUhFwa+L05rVOJFwc17cC0KrbB70=;
 b=qRC0AB2U7vNVRjucivi6rIiS5fjNfNB//DIwc//1cfAHIoPG2lO15emoEskL87xpBN
 IiHw5zhQpB2It9FeBdFCWojMgR/6NouLPGdRuWTbRMCtfUzf91wc/d96+PL3BPvhNPX9
 idU8T56IgJ9tjZ76YLCe8rDTV1V1zSemC0fUhPBJrSN3A+HukT1SjzrDrXzuDfHaapi0
 cxWRj8U4j2FPwGCheny6eQlEuz/KAL7ZyhHS5E8bRHvqeAs9IvKVrX1pUn2sx8HZZySP
 G3+KkzBwd9ttmAENW+n8+r+BIokbSQe4cWDuqEdfHnTa9VXucf4/wdm7SR710vz08lTe
 aH0A==
X-Gm-Message-State: AOAM530iQFTk3GtJ6Z320tqFnFGPfD5n95UJhpxXzppTPxOaNsZCLmKX
 aIj7rQQ8hNRcsfcr3+f6UbAkAZiIesF3fw==
X-Google-Smtp-Source: ABdhPJxTO3GxjEeEfGLDh17vpE4kocndXhPi43Oo7WFCNnSItdhXmIQN6UWABtBYcBAG6gkhp4x4pg==
X-Received: by 2002:a17:907:6e6:: with SMTP id
 yh6mr8197457ejb.512.1608377220767; 
 Sat, 19 Dec 2020 03:27:00 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id n17sm6651785ejh.49.2020.12.19.03.26.59
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 19 Dec 2020 03:27:00 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [RFC PATCH v1 1/4] media: dt-bindings: rockchip-rga: add more rga
 compatible properties
Date: Sat, 19 Dec 2020 12:26:50 +0100
Message-Id: <20201219112653.10705-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201219_062707_059935_48779F0F 
X-CRM114-Status: GOOD (  11.77  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-rockchip@lists.infradead.org, jacob-chen@iotwrt.com,
 mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add more rga compatible properties.

"rockchip,px30-rga", "rockchip,rk3288-rga"
"rockchip,rk3328-rga", "rockchip,rk3288-rga"
"rockchip,rk3368-rga", "rockchip,rk3288-rga"

make ARCH=arm64 dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-rga.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/media/rockchip-rga.yaml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/rockchip-rga.yaml b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
index dd645ddcc..a609b63bb 100644
--- a/Documentation/devicetree/bindings/media/rockchip-rga.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
@@ -21,7 +21,11 @@ properties:
       - const: rockchip,rk3288-rga
       - const: rockchip,rk3399-rga
       - items:
-          - const: rockchip,rk3228-rga
+          - enum:
+              - rockchip,px30-rga
+              - rockchip,rk3228-rga
+              - rockchip,rk3328-rga
+              - rockchip,rk3368-rga
           - const: rockchip,rk3288-rga
 
   reg:
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
