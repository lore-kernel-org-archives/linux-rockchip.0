Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19001C7115D
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Jun 2025 19:01:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LvNH72j/M3zIb+x65+7ZgdT/ziNLpP6xK6/xeVY6tSw=; b=2WwcJ+Op0M6EJ0
	vobfUMmeUsyEBbIEyfnwxCm2L9ln/uv9wbXCcT3pw2v58Qgspox8aVwkweNAJQi3HWhXnguYvyrBv
	aEXnpttntm36LRitXuqN+bQrGgrljYTDa1WSFwQAQhsjzLuZxom0Vru8AWcT4Gt53J7jg0vT7HRLE
	QauZi4u1rWnh4OMSQ2OxGGwH2RvCNJNXGWiJpUIT2tlgQJutP0zCXMcm8PC6jUy2t5YDFBx6TqV00
	Y5wCV8WytVvg46zJFtFJSD4cb6sbROTdhAkwHHs+RSEgGBcF1HEAnCX3PdEdBfikePAGQU8FDgxzD
	qrAcdtzFFlMMNZnTYuoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTPw6-000000016xC-01qH;
	Sun, 22 Jun 2025 19:01:02 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTPth-000000016gR-1V7V;
	Sun, 22 Jun 2025 18:58:34 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-450ce671a08so21625905e9.3;
        Sun, 22 Jun 2025 11:58:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750618711; x=1751223511; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=uSVO5sTqAoj9Cyt8EcznPZsRyzi2cKVQFTlXzQdwggE=;
        b=bVYq3UP5lZnXvlanllR+hD5YuFty8Ck7aLwNZUc2FAcWaMdiul97KxmAAQUCxZtRs8
         yOGGK+IMtt+FHGtV+cuAVpZR5z4zJB2sFcbe1kfyK6+u7MFWKdZzN4EzjAgYbegl0ZF8
         0tE1nax50fCL7Kh4c8W9L74yq6ouGzfTJBT8APhQ6Hxu3RWU7o/4kDpdKpaqti4g3xcF
         jlMLXemgPEnb3PqPWV6G1vHHBvatXfoqRM5CwuiPuZ+PeQPirLVp4S1R/r/VfjDe7SCi
         2vuH/21wLLC6AsDCCm35mJmSQc/mcxhhinxyJ2nyJB3qwmWglyKkbE57BrDpH+uoNvzr
         nicw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750618711; x=1751223511;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uSVO5sTqAoj9Cyt8EcznPZsRyzi2cKVQFTlXzQdwggE=;
        b=skLB9Jg5F5ETDLBe1oQVvlKad3rldJFHw8VevmkjPWwUz0j7Zlc+FBMORSrCJeBJsN
         mL1/qJKFyzucs24TCrVGllmXoAAiDJmMkALGN97Ix+lmoiuWzC4JfqYYlGFuVzxA7o0T
         nRxCwoNrVZmWD6KNaquQYxRWA8+bqdzF5IIAvfS2nqIPIz2iyCVBNdyUwBceuDDX5JWo
         b41+9R0FtIscaQpDdILpHxT8Q8vtJsDZxxQJ38HJtTjb6IDwU7I9a5ryMSiKogUHNXs4
         ppbPPN/fNfIxo9p/8AA8cMmML+fStdwiu34+c16YAfjoW9mjJ0fr3+JgJGKs1zGtY2T/
         yfHA==
X-Forwarded-Encrypted: i=1; AJvYcCV5CIwF62lH5EUwMVm9HtYdtK5mnGbaZnWkHqZkGPyYmsD3Gqb2EowhYV62uWIsxzBQeyd509+m3VhwTE6ow1E=@lists.infradead.org, AJvYcCXQNwDl/ONjNo13yVCycz7TPbpDoIk0iO7Cj/1cYBmloUcDLO/Xm+7PFt/qUzizmfZvbq9Syl2kRrGL0op0xnBe@lists.infradead.org
X-Gm-Message-State: AOJu0YxN0Qp6DG6GwZKHgQwS7lEhCtxv81qPDAnpSG1JGc7BUAzsKXHt
	Ln+BAwlVD4JlhHBkX7GHdiwHGySAQC28Cos8vkbP7ssMYQv0wj/wOP4=
X-Gm-Gg: ASbGnctpWKmezcNkqAgWwDSgSPFuNZUCI8OzWzIkxKUs/Ch8aHjm7a3pelGzjxfXFe2
	S17fKUvDfwJUBaBt6YZX5oV4BqY0OlDCTuChGQkHcRI+p+j4TVqsdXlI/HvCBr8P4aQ467CA9a4
	dQytdc2bEjFHDJeO7emuVMVRwr1DBr24Brc0MaEn4dw99OFYsE+YVm3fWSPr+32His2mAmicrlh
	x6I+5SV+iEtaDNmh3QM8Nz6GmU1p35CH7HCo9nKjq3bqv4xqPzZrK7UrPJnQVSAROeLEmtTPLXs
	DApxcNrz9rGT6z1uwsubq70TSdwiKV35dPFzwiqpJehORH5a4gcA78pglFPkWz1jZdBzDih28Qx
	B
X-Google-Smtp-Source: AGHT+IH3xVQDsV2b3eNirbfyc89CSjt22T6srKK0geP2sYvw93s1z7TyOBPUqY/JjE4XrqHgNi24lQ==
X-Received: by 2002:a05:600c:46cc:b0:453:b1c:442a with SMTP id 5b1f17b1804b1-453656c3168mr94060515e9.27.1750618711137;
        Sun, 22 Jun 2025 11:58:31 -0700 (PDT)
Received: from nas.lab.vially.dev ([89.101.66.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-453646d1391sm87238045e9.9.2025.06.22.11.58.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Jun 2025 11:58:30 -0700 (PDT)
From: =?UTF-8?q?Valentin=20H=C4=83loiu?= <valentin.haloiu@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: =?UTF-8?q?Valentin=20H=C4=83loiu?= <valentin.haloiu@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Enable HDMI receiver on CM3588
Date: Sun, 22 Jun 2025 19:58:12 +0100
Message-ID: <20250622185814.35031-1-valentin.haloiu@gmail.com>
X-Mailer: git-send-email 2.50.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250622_115833_400324_DCF55B0C 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RW5hYmxlIHN1cHBvcnQgZm9yIHRoZSBIRE1JIGlucHV0IHBvcnQgZm91bmQgb24gRnJpZW5kbHlF
bGVjIENNMzU4OCBhbmQKQ00zNTg4IFBsdXMuCgpTaWduZWQtb2ZmLWJ5OiBWYWxlbnRpbiBIxINs
b2l1IDx2YWxlbnRpbi5oYWxvaXVAZ21haWwuY29tPgotLS0KIC4uLi9yb2NrY2hpcC9yazM1ODgt
ZnJpZW5kbHllbGVjLWNtMzU4OC1uYXMuZHRzIHwgMTcgKysrKysrKysrKysrKysrKysKIDEgZmls
ZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1ODgtZnJpZW5kbHllbGVjLWNtMzU4OC1uYXMuZHRzIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtZnJpZW5kbHllbGVjLWNtMzU4OC1uYXMuZHRz
CmluZGV4IDgxNzFmYmZkODE5YS4uNWZiYmViNmY1YTkzIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1mcmllbmRseWVsZWMtY20zNTg4LW5hcy5kdHMKKysr
IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtZnJpZW5kbHllbGVjLWNtMzU4
OC1uYXMuZHRzCkBAIC0zMzUsNiArMzM1LDE3IEBAIGhkbWkwX291dF9jb246IGVuZHBvaW50IHsK
IAl9OwogfTsKIAorJmhkbWlfcmVjZWl2ZXJfY21hIHsKKwlzdGF0dXMgPSAib2theSI7Cit9Owor
CismaGRtaV9yZWNlaXZlciB7CisJaHBkLWdwaW9zID0gPCZncGlvMyBSS19QRDQgR1BJT19BQ1RJ
VkVfSElHSD47CisJcGluY3RybC0wID0gPCZoZG1pbTFfcnhfY2VjICZoZG1pbTFfcnhfaHBkaW4g
JmhkbWltMV9yeF9zY2wgJmhkbWltMV9yeF9zZGEgJmhkbWlyeF9ocGQ+OworCXBpbmN0cmwtbmFt
ZXMgPSAiZGVmYXVsdCI7CisJc3RhdHVzID0gIm9rYXkiOworfTsKKwogJmhkcHR4cGh5MCB7CiAJ
c3RhdHVzID0gIm9rYXkiOwogfTsKQEAgLTQ3OCw2ICs0ODksMTIgQEAga2V5MV9waW46IGtleTEt
cGluIHsKIAkJfTsKIAl9OwogCisJaGRtaXJ4IHsKKwkJaGRtaXJ4X2hwZDogaGRtaXJ4LTV2LWRl
dGVjdGlvbiB7CisJCQlyb2NrY2hpcCxwaW5zID0gPDMgUktfUEQ0IFJLX0ZVTkNfR1BJTyAmcGNm
Z19wdWxsX3VwPjsKKwkJfTsKKwl9OworCiAJcGNpZSB7CiAJCXBjaWUyXzBfcnN0OiBwY2llMi0w
LXJzdCB7CiAJCQlyb2NrY2hpcCxwaW5zID0gPDQgUktfUEI0IFJLX0ZVTkNfR1BJTyAmcGNmZ19w
dWxsX25vbmU+OwotLSAKMi41MC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
