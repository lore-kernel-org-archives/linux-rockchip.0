Return-Path: <SRS0=290H=HD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0B27C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Feb 2021 19:16:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9934964DD9
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Feb 2021 19:16:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9934964DD9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LxlxqZ+Iyiw3DFMg5ppOiBEBwAS+IsPE9oCSDfzX1PE=; b=nlDHdLtk0L51nSgZMqzMHHMcEO
	xm6BQ0a9lnpSa6D16g9Tr0BeKgYN3I4VT4ohPl2QPwxCi1gs/4JPC+XwvRhNlWxrLFM5YFXhta9Br
	CpRj+ZBN5FpMiC7xbvvXvtZewFHMORGl4zl75Y6cS3cFbHZMX4DSeBtNEuyXZbsK7yT+sVFMYwpK9
	vx9jCovjh48fWC1LcZahux9K1ReJFblmDWULbGC7sH0H7vkYTXC3LoiTd2Wfu8j0R9JrpJxUcIJ9g
	mSPf/LaYMwGmpqXbRDeXEVg4tI/vcD4M44/cTLOiytQD2kV+dcL8ad6rkqnbzl1BYmWSLB9heaIdr
	8hiX1c1A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l6egf-0006my-Vv; Mon, 01 Feb 2021 19:16:38 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l6egZ-0006k5-CA; Mon, 01 Feb 2021 19:16:32 +0000
Received: by mail-ej1-x631.google.com with SMTP id l9so26168379ejx.3;
 Mon, 01 Feb 2021 11:16:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mllDDoFqrKsaQ7KlxScyjYXTToCMmRRcsUF13aNpIwo=;
 b=TR3QQUl376CKWxkT45Au9qVjuPj9X2icqMv5pUoU6DvPDZ/HdYIx8kdN00mwx85b+r
 aSP+eqe5Dd1ms63DPOBI+EdTcFiO5UK+JmzCq/pFMcocf4ApS00AwLHTqowrf/zWRu7n
 aW0kC7G/KebCWR+wv7lqMmx7zF2Ls75/cyBbkfbRn2xmjFPSCDDVCBdCjTZ1T4XzQnqY
 ZxkZgmgyQqVduA/VEoxb0mMHb3YNSUmixtFt/xNf4OLNpopB1MisSWKPKhAQXlvMQUkI
 An4v3LW8KY6p9w84sNFGUOpzDC/pK+znqbnArLiO/DHdH6Y1+CuF91rW5fzdr42jD3yH
 wzIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mllDDoFqrKsaQ7KlxScyjYXTToCMmRRcsUF13aNpIwo=;
 b=ra4hBq4wIcAySvb97skckibsWdQLs8jocXvFsWcJR9pzPiL3oQzPkYoYr4B4T8r3HU
 GDjBzbo4RRyJCY5WJamX51fhq9l2sCDKPNinVM1yKRmOcbIDxrY7cVoekP1V27fnLhEZ
 kWw3gqYdpnfbDAEEP3RgH1mXGZ9Qk/otCds/YQODXpKzAIS0IwX/4iRzFOn+9WzE7361
 c/5GO2jNMYRp6lsE56vi0rhKOzJFqiIjQROu2s1c69GGBIwyg0y8IKqQny3ypdD/nqFi
 bUJnb+p1Yf7dGorf3exQos/UqaxsDLIe4b6IL79wZCJWaUlblwe/3JSaYCgSyoYnOaLE
 Yo5A==
X-Gm-Message-State: AOAM531G5rsu+iNfZI8vUj2A5Q9jhHAU05TfjHsgEW6SdYOOEl/qY1uj
 VottfFlOpIc2YcHHnI0jips=
X-Google-Smtp-Source: ABdhPJzLFUzM2fRH4Z8rU6O4IMoW4h0n2tWF9JTlqcSjHoiZpbSDGfV/fX8kQ7Oct7ftJOdotIdl0w==
X-Received: by 2002:a17:906:a8a:: with SMTP id
 y10mr19290598ejf.139.1612206990147; 
 Mon, 01 Feb 2021 11:16:30 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id a11sm8243630ejc.64.2021.02.01.11.16.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Feb 2021 11:16:29 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1 5/5] dts64: rockchip: enable dwc3 usb for A95X Z2
Date: Mon,  1 Feb 2021 20:16:19 +0100
Message-Id: <20210201191619.32353-5-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210201191619.32353-1-jbx6244@gmail.com>
References: <20210201191619.32353-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210201_141631_442340_DF45AF21 
X-CRM114-Status: GOOD (  11.92  )
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
Cc: balbi@kernel.org, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Enable dwc3 usb for A95X Z2.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts b/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
index 30c73ef25..b26c653c6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
@@ -357,6 +357,15 @@
 	status = "okay";
 };
 
+&usbdrd3 {
+	status = "okay";
+};
+
+&usbdrd_dwc3 {
+	dr_mode = "host";
+	status = "okay";
+};
+
 &usb_host0_ehci {
 	status = "okay";
 };
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
