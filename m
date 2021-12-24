Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEA6DC433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Dec 2021 08:43:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Kk3HvdKtFDnA8P9K5VNwEahkCEuNlQxT7Avz/MSvME=; b=ai71ifzaqY6RN8
	PsP7r+2GcujqkoGNIS6WKY0z9DZ7xT7sdY3YdaC0/9ELTh5vQnFEFiexf9sy+9T5YmTRg9dkQQqSm
	c3m2ffUHZTPIlFpTL+jUxDQ7AxS3vnAP3skz/W6jb2V7sM14TPRPBKn6f0KSwuDUmus+z3mklnTCi
	WsvNkH+C3O3y/N9SvSpJkYQtXVv0Mnobr/CnSofemlCzCfDzgmpf26DIqoYXRcd6WMuEd0T9MBq9e
	JdodUMvFLitdBk9CFHSDbe1ERk6UxynoDv9FPhsXw3uuKY+aqpR7EfbfJeT2lA+WTqxfS1FZkVBIC
	KUNTcsAT/j1w52KIop2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n0gAm-00DwhN-II; Fri, 24 Dec 2021 08:43:32 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n0gAj-00Dwd2-DK
 for linux-rockchip@lists.infradead.org; Fri, 24 Dec 2021 08:43:30 +0000
Received: by mail-pf1-x42c.google.com with SMTP id c2so7328837pfc.1
 for <linux-rockchip@lists.infradead.org>; Fri, 24 Dec 2021 00:43:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eVYg6vqK0bkjeQRhVKIbYAOnwHGxgaBimTUyzl5wfWU=;
 b=DSi9fT87X/aQ8j99LRzb46Wq1GH2EqAtDCrJVsAMspshyX9URQfBz6K+q5fJwVCHCb
 e46+U5RO2/BSYx742BVsAROr8Xn3nEPAx0d+GnFEf7cu5S+E+qbRxAEIaGb9HMSi/CPU
 3W2UEziHeqoFpnqAvvSCfeYnqfr1K91xIZC/s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eVYg6vqK0bkjeQRhVKIbYAOnwHGxgaBimTUyzl5wfWU=;
 b=zficXStIroB4S19qpOfY+jAjuoLznK90zaslS8r/yzTjf1a2WBftHGo8XVn7PFG/IE
 oJqNI7iDZzLcVgdgj8TZA8M9ar6+oSzOox+QGZjZTEYsmjl+lbcOo8ESem5qyC0CceDb
 dvFodEBirrL4wCVh81shUhMBgtIXMM0+bPy4SIBRqPMFDI0iamwt0w6TTorZ2eOnvVf6
 MbACsOJf1KrCEsF/CzhtSVLH10/VI6DbDF4RL5F+otO6pfhoE+d1W2qraMajDCmvemmA
 yk3mawuGzk7/26z0+8vfg0RP8z7BnXVbSTP/fdw/C0sYRGX0upDQxK+ZzYlPkf+0l1lB
 H/5A==
X-Gm-Message-State: AOAM53161CbcOygMsvLMc1vP0q8Y288AYgWshqWZwzF7CvpxZ+Wy+3lg
 Z2+Sk0hriUaDW7vj3f07KRg9/A==
X-Google-Smtp-Source: ABdhPJxZbbX4Ne8SBwTui1zct2EjoGavD3KorLUC07IOY5SGzG1gbt9det+g1w/jEAaZ0gxMh+oSgQ==
X-Received: by 2002:a05:6a00:15cb:b0:4ba:edb1:c03c with SMTP id
 o11-20020a056a0015cb00b004baedb1c03cmr5970245pfu.54.1640335408697; 
 Fri, 24 Dec 2021 00:43:28 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com
 ([2401:fa00:1:10:fd40:cbd0:c42a:3c26])
 by smtp.gmail.com with ESMTPSA id p13sm436369pgl.23.2021.12.24.00.43.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Dec 2021 00:43:28 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Tomasz Figa <tfiga@chromium.org>, Chen-Yu Tsai <wenst@chromium.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: [PATCH RFT 5/7] media: hantro: jpeg: Add COM segment to JPEG header
 to align image scan
Date: Fri, 24 Dec 2021 16:42:46 +0800
Message-Id: <20211224084248.3070568-6-wenst@chromium.org>
X-Mailer: git-send-email 2.34.1.448.ga2b2bfdf31-goog
In-Reply-To: <20211224084248.3070568-1-wenst@chromium.org>
References: <20211224084248.3070568-1-wenst@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211224_004329_506666_11863958 
X-CRM114-Status: GOOD (  12.67  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The JPEG header size is not 64-bit aligned. This makes the driver
require a bounce buffer for the encoded JPEG image scan output.

Add a COM (comment) segment to the JPEG header so that the header size
is a multiple of 64 bits. This will then allow dropping the use of the
bounce buffer, and instead have the hardware write out to the capture
buffer directly.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 drivers/staging/media/hantro/hantro_jpeg.c | 3 +++
 drivers/staging/media/hantro/hantro_jpeg.h | 2 +-
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/hantro_jpeg.c b/drivers/staging/media/hantro/hantro_jpeg.c
index 7d4018bd6876..51e67e5cf86f 100644
--- a/drivers/staging/media/hantro/hantro_jpeg.c
+++ b/drivers/staging/media/hantro/hantro_jpeg.c
@@ -247,6 +247,9 @@ static const unsigned char hantro_jpeg_header[JPEG_HEADER_SIZE] = {
 	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
 
+	/* COM */
+	0xff, 0xfe, 0x00, 0x03, 0x00,
+
 	/* SOS */
 	0xff, 0xda, 0x00, 0x0c, 0x03, 0x01, 0x00, 0x02,
 	0x11, 0x03, 0x11, 0x00, 0x3f, 0x00,
diff --git a/drivers/staging/media/hantro/hantro_jpeg.h b/drivers/staging/media/hantro/hantro_jpeg.h
index f33c492134e4..0b49d0b82caa 100644
--- a/drivers/staging/media/hantro/hantro_jpeg.h
+++ b/drivers/staging/media/hantro/hantro_jpeg.h
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0+ */
 
-#define JPEG_HEADER_SIZE	619
+#define JPEG_HEADER_SIZE	624
 #define JPEG_QUANT_SIZE		64
 
 struct hantro_jpeg_ctx {
-- 
2.34.1.448.ga2b2bfdf31-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
