Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26BD606D81E
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 23:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tHEG/ePq;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=zib6nuYW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Esg3qd2q06tkv9fybWiB6RZ3kritKrNn2F1HGgT/zdc=; b=tHEG/ePq2uXpzeO/e016gpCNhm
	2tiCtl0qJRRXiXS9UQAvIGFwPrHlWQqC2EJdzD8/GXUDdJRbzTsJ1Nnii1I3i90BxdqDZr/Yj2n/9
	7q64C4WBfCcW1sGviH8XEaec0LrTqVSYlOkZRubdJEmNk1nbnDI37o3fopM6hOw3RO52bsMzFscXR
	JEZhY+muNtz4gpj4qNldURtO7SiH0dd/cOlrrTah8RzrDbJelGbqvfY8PyO0NgeecQHVk3+Mv0Gib
	fG5z4NJ0+HzxmoQ4G7VQXAL5m1FLAzZEfAwDbYw4UzbEZNU8+sVc5KQaTLrxFRLIKLM2VZADMlfEm
	juMJb/aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP6o1-0000000ArUT-27S0;
	Thu, 05 Nov 2026 23:23:41 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP6ny-0000000ArRs-3dk1
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Nov 2026 23:23:40 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-2ed283e2bffso88325ad.0
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Nov 2026 15:23:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793921018; x=1794525818; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rloPnHEOePgtL/g9wYI+1ZAXqmS3tU4v9p3VsYEL1+s=;
        b=zib6nuYWV3AV8MPhKuQPiwiDDZi8F7i5KVS5af6ALrvqndxLXD5TF7X+IonIT2HIv0
         j/Wlxa7idHr1xE1jD8tgoJMy+sT7FiaDD0bWWD9E9sa8Fr34bS8tABfiKJ3hKih0H/bE
         n+HVtlT0Qhy1Wxh6D6jBuZSun1OHP1k4cgcohnRXUd5mtno7bJhwdeMlChvEsM76mwdY
         cv85+3ZDL3OOBy5hzfy55ZpEgzaDt8U249te1H6SBkzJ3AL7Llwy/rfzkLe+16nX++Eb
         V/KPxLxokBTFRO+b17pBds4J/BoKgoZE8Imzhwi5LWXUutUpZOZPiymmL/bvVJLS4H7o
         qchg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793921018; x=1794525818;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=rloPnHEOePgtL/g9wYI+1ZAXqmS3tU4v9p3VsYEL1+s=;
        b=CtCJvu9aWsTQI9InTwln+zGvUVYt7890ofO51upD8W+o9raFfd+2+u1HDSbMNSHlOg
         S5DWsWbuf3btRwOIRy6E4Lut5btWpyqVhrlevhh58Z1xOn17ZZ9ZRkQM+MlqkWcqVnma
         BWYweNlo6r2gmpSDcwPwTl1S87bLfAiStvzvYAXhe32wmEo0ucySg2UD5X0ZQ0xlD7lt
         bCIgICbT3U4f/06LThawrhw6gD2slwY++xAikOBJXQHj0IYKzY8v88nrxddMtBQvpO3D
         eqfhHmvGj0HGCc1SbSFkdWjRkKiRyCYCuIQNnNp2RARgs1nBU9zMhVwqLF+ZJcPe0jcD
         JvrA==
X-Forwarded-Encrypted: i=1; AKwUvBy25P490Djv8cCWij7T6VMV0ZlXF1Y/AcKV81RySPy9Oe2w4M83Is8BuV9UHsCJkpChbF4b6Ga+Hv3vkbXQXQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z8lxVyGJsLwfvj2p+hrXp8DYBdCn8yS9swaGGorECjLKxwqc+Z3
	RVTC40h0qkgNnj2Et60c64zjWeCjfOpylKlhKJtVT3ICumYjjtGKJ3Yp
X-Gm-Gg: AYBFou3Tyu4KFCeDQRRRXc9veFB169ptyUNFz5J9P1iGN3HTh33hP3upKsqHBCbNM1p
	GOPs6EFSqa+IiwYE97OEvG5R5HVbJ8I3Wm0HjP44xL+ctXRB75rQhgESmM5GWSf4vMbCoh0EOS5
	ISXDEySr+DN1cV5VA0PovQ/sSnyqCo5WOp3yvQBDyha/fH6Ek4tRLJsF8/bPyMEl6Ii6JQLzckF
	64DwWu2Hi45noD2LRghEUoV1rdRcAV5mFrKpJrUIXl6n/Oal7I3GV4TLOBWTCF5SXDqNV2VLzHJ
	PT9B5WlpPHg8k6vWpG/Zq7O0wswuO9AEcXEAY9wPHfvU5KjBDFLkar8XjUY06Ryk2Bxnogmvy6P
	sGsBmzuVcTbPVwaS3wVr4AU20Nmbq9a4mTe8TPZq7drHfb02Qr4QXucvyVNty9AmHEnFSIrkApn
	PaD0gWqOPQj/PeWcCCUXJjNMTsyYtADUUBkbqCAsiNWm1dAZ/9tMbbf+6nF1NzATfIS+D0tF4UQ
	2JSu4Lyg9k25oE1H4ibzRZcPQxn6hOr5pCHvzY9PUHfmah9YV8kv9LlCCvUPWTUYTnMC+Onaehy
	rAoZjj6l6euNcp18itCOG15XgFuCMcy52GRCOndXrkNZbv0ho+a7okf/5lhk83k=
X-Received: by 2002:a17:90b:518c:b0:3b0:9984:18c6 with SMTP id 98e67ed59e1d1-3b0db6e1fafmr885341a91.3.1793921017864;
        Thu, 05 Nov 2026 15:23:37 -0800 (PST)
Received: from FAIZEL-KB.. ([2001:569:5b64:e100:f564:53e0:ae9d:9600])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-3b0b323cd3csm5317297a91.3.2026.11.05.15.23.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2026 15:23:37 -0800 (PST)
From: Faizel K B <faizel.kb@gmail.com>
To: Mehdi Djait <mehdi.djait@linux.intel.com>,
	Michael Riesch <michael.riesch@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	libcamera-devel@lists.libcamera.org,
	Robert Mader <robert.mader@collabora.com>,
	Faizel K B <faizel.kb@gmail.com>
Subject: [PATCH 1/2] media: rockchip: rkcif: Filter enumerated formats by media bus code
Date: Thu,  5 Nov 2026 16:23:09 -0700
Message-ID: <20261105232310.385463-2-faizel.kb@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261105232310.385463-1-faizel.kb@gmail.com>
References: <20261105232310.385463-1-faizel.kb@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_152338_908956_E744D5D2 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -2.1 (--)
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

VIDIOC_ENUM_FMT ignores the mbus_code field and returns all formats,
although the video devices set V4L2_CAP_IO_MC. Return only the formats
that match the requested media bus code.

Otherwise userspace can pick a pixel format that doesn't match the
media bus format, and then interprets the captured data in the wrong
format.

Signed-off-by: Faizel K B <faizel.kb@gmail.com>
---
 .../media/platform/rockchip/rkcif/rkcif-stream.c  | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkcif/rkcif-stream.c b/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
index 3130d420ad55..f2a24832a8cf 100644
--- a/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
+++ b/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
@@ -395,13 +395,20 @@ static int rkcif_stream_enum_formats(struct file *file, void *priv,
 				     struct v4l2_fmtdesc *f)
 {
 	struct rkcif_stream *stream = video_drvdata(file);
+	unsigned int i, n = 0;
 
-	if (f->index >= stream->out_fmts_num)
-		return -EINVAL;
+	for (i = 0; i < stream->out_fmts_num; i++) {
+		if (f->mbus_code &&
+		    stream->out_fmts[i].mbus_code != f->mbus_code)
+			continue;
 
-	f->pixelformat = stream->out_fmts[f->index].fourcc;
+		if (n++ == f->index) {
+			f->pixelformat = stream->out_fmts[i].fourcc;
+			return 0;
+		}
+	}
 
-	return 0;
+	return -EINVAL;
 }
 
 static int rkcif_stream_enum_framesizes(struct file *file, void *fh,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
