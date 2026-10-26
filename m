Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02699606A31D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Oct 2026 15:27:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=kDC02pIV;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=NRvOEepR
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=LtAoblQQb4ng6q1J7GEUhrn/6Kctn9P3ACYr6klVCo8=; b=kDC02pIVx6nHZt/irR12izVEgl
	/MwEvFkwfDOBoGib+tAwv+Ns/O1zoaOwi932LMWwhcBuY55Sng4LqDrzF4DAPoBqOQJKhsh61bsiN
	DIRJl0pndksdnnj6I/MwAuG40/TUjbX4kh+OsS09CnxcdRkPgPmsmXpUWcjra8+oihH1tA/4O8gwu
	DFqJAkpIheNJ3jTkYVuZNGrH4dk8tCl4kkJ2oK/r7LKa28TfNkjOdbiacGDo2eHT1WzS0TnHc8OFJ
	iORJlgEG7h+bkthfTI0URHHDcD38LjIhnWjO9VPtmA5wjw7kSPSv6+qFvvcc0MNu+BbBpVwOh7XLC
	LawN83qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLMbC-00000002l7a-3O9n;
	Mon, 26 Oct 2026 15:26:58 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLMb9-00000002l66-3i9B
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Oct 2026 15:26:57 +0000
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-539a57a0b1fso1167146b6e.2
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Oct 2026 08:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1793028414; x=1793633214; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=bME5B1SZGTcUgMRsuT3S3lxxmltA7QzLm9Ooi2WbeZg=;
        b=NRvOEepRMBDZ6gJq545206GcznyiH33t99wfIoDefuTBMBRIPcPqT+RGZHARXOaBgS
         sdfhpjVCniHGOe9H+2+ZAOgXorrKlubvkKuvRtkXTi+lTKUih6HrBJXf1EOHlGu+tqjh
         xFnBF0QrK0YAxWFWyetZoQ/9AYRf+tO5PEWes3foBpwNWAoxN1KdevO08r+C2R7Ot9CH
         X/siCkagzl0a+WCf6ePgs7s7SOH760XFqICqj0E6mOwVRYcYz36wElpWBUIhB6gPfWPx
         j2tAT/6MaLGHkHtPfIcO+Mwq+sWU+TyPTZEoNxWmxZY+f2/kFOnbD3wEs3gt0a4xNapN
         5uow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793028414; x=1793633214;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=bME5B1SZGTcUgMRsuT3S3lxxmltA7QzLm9Ooi2WbeZg=;
        b=IRs0urw2GlRrzvZIXvHw+h7WARfqv1bIrqdRPy4JVvD9PzJ0YvCDmm9KfMYJCsq0dL
         h0p0zLb+FUM/pU8sOLFE36Pv3FfMvqCyYjZtmY9gOdSsIkzvkNLpMiMsFUO+/g9PmWbz
         KsVc9qPOPnInWdyVXxYBtFeJUp1Fy5PxJGpAO4bScv8WgjSdO63A/SPVzB22i51Y/YsC
         bA24+ZmGJGXedceiTfSbeklM9F3AMb/f4YoFdXac3G/ty2wZB0xFWHxmq7+nn+5hgSP8
         S/0CqI8nDDDNvJ76nptgWPSL3up/mpNrLpgk6muf/umyZrlsqm0xL7Ot4BdyZV1bozPK
         TLHQ==
X-Gm-Message-State: AFq9FYJptR8DcXF315QtViUfuyZwjUOlhm2xSmoxy1scttoyg5umCH0j
	0MKGIhNvJj9TB/EXX5/jB1G7MMQlmNKzhn5OK/X3gqHz5mEJBAFE3IZk8PdYUw==
X-Gm-Gg: AYBFou0JCAJ78xvbdl+oZQqjlJ4ctaOE8vxnbeMLjwbSonvc76FHIamt2TuStfd4lwR
	XinCUyz3EXpz1OONZSxH/tOpMjEqaklWCROjslp/jlRHGbPkfiPrZoY/CtI3f2U/CY0DfF83Fl/
	bqQh8h4eoYXnukDYkCK0jzX/ARhaH8E5ULPPnkA794wg/O324xHSvOmcUI00yT9QP6E4BuIu7PS
	yPz9hyCACGfeKN8LV5RUxM+/PGcreSai6sdcVDtw6giJDnKsJsvwZFEiwhBlD8T028j5NcwvbiV
	ZlmgmHMrjyP3ABfRKIqBeomXb1t86xts1izzObDgmtYADmt7OwTokFUaLL8Ykfrat47Tklmpsmc
	a14G8hWIG+7ICQ1dXRrmQrvDavl7u5sofF6e8zOubuPyusxXTH8TCGNF8Uq/z6fw90q3uwnoEBl
	e6cEtOwzFJI1A6tGeJdHwB90EHR4C4tid5gHRXi8NJXcKfYreUOs3rYl2TufZVyxUQiXkwzGhxF
	t6XxT6gL3gt92YLFXj8zZoiSPf1AjPjtubpWs/BxtRedRUFZ+5nWMPNBVDR8BzvKCWHAHE6WAZ5
	pZaQnph2RULb5BTrCAVlYneN7wIQ3A==
X-Received: by 2002:a05:6808:c3ea:b0:4b9:e5fa:8a17 with SMTP id 5614622812f47-55c002f98efmr4375364b6e.28.1793028413958;
        Mon, 26 Oct 2026 08:26:53 -0700 (PDT)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-55c0424973bsm5788711b6e.6.2026.10.26.08.26.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 08:26:52 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH] arm64: dts: rockchip: Add icm42607p IMU for RG-Vita-Pro
Date: Mon, 26 Oct 2026 10:26:49 -0500
Message-ID: <20261026152649.1576867-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_082655_932789_ED118DF9 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Chris Morgan <macromorgan@hotmail.com>

Add the Invensense ICM42607P IMU for the Anbernic RG-DS. Mount-matrix
was tested with iio-sensor-proxy and reports correct orientation.
Orientation is relative to panel physical hardware which is rotated 270
degrees in software.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3576-anbernic-rg-vita-pro.dts    | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts b/arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts
index 358dea43f9b6..15d724b72ba1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts
@@ -819,7 +819,18 @@ regulator-state-mem {
 &i2c2 {
 	status = "okay";
 
-	/* inv,icm42607 IMU at 0x68 */
+	/*
+	 * Mount matrix relative to panel physical hardware which is
+	 * rotated 270 degrees.
+	 */
+
+	icm42607p: imu@68 {
+		compatible = "invensense,icm42607p";
+		reg = <0x68>;
+		mount-matrix = "0", "1", "0",
+			       "1", "0", "0",
+			       "0", "0", "-1";
+	};
 };
 
 &i2c3 {
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
