Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5C4AC38142
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jan 2023 07:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tWNibh29egbK7lQS41aJwFhvdm4OfK5oSmuFoNtmD8o=; b=BC0k4Rkgvtw+JH
	h0dQLlHtuoLd2YMAuQesgzuFNsSRp6PtzUrjustBBTl0NBkb/AAW1oBu3t+Oj0FPlRKu0FqPZtpj1
	7HK+B2two8CFVY/rL0WLNZVhSK+n1KUC6i8hcesjSKhXRh4NWrvqtKSrWuVefqnBtrM4y3v7d/48v
	HsNq/JEze8dpIvD+LScz6KlKdZdKRefJY6bvH1BmzNshMialpNu9i6BlPH+kZ2/iJOoA7I0/mPvFV
	9BHVgQjvbKNG8xbQ5Di8UD9XWBpUV283DvlCEpa47lUDtFbeGfqHsk7122ZL1YiHK1hl1eywFWR1l
	U7Jf7xLsskiEIn36nDfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJr66-00GBIM-JO; Mon, 23 Jan 2023 07:18:30 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJr5D-00GAwl-Jp
	for linux-rockchip@lists.infradead.org; Mon, 23 Jan 2023 07:17:37 +0000
Received: by mail-pj1-x1034.google.com with SMTP id h5-20020a17090a9c0500b0022bb85eb35dso5822397pjp.3
        for <linux-rockchip@lists.infradead.org>; Sun, 22 Jan 2023 23:17:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GI8NCTgrz3eH8HHLTGGwu4ZgM3J2mR0tZKBmJm8ZEFI=;
        b=AyHSatqd3SUjFsZkrghnvnPkSgYtNAYZoegmcjQ8bkGVdN9rOP/5QyzHb7MuYYZe6E
         PjyIXgUSZ47Jd/uwzJ0o7sEDXjCCvWYcmafwW8Lozy6zNDY2RuClH4qDFstKW5IEwVu9
         CeigfEACWVJvv3FPV/J0I3zK+7VflToE5PWSA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GI8NCTgrz3eH8HHLTGGwu4ZgM3J2mR0tZKBmJm8ZEFI=;
        b=N1X/B8uXFrrnDFcIxIMlYqCZk/Cz+cfFFE9xW3I0PeX9wBIgY9f+7xl4MX59GnfGbp
         B0uHaDIeaXg8LRiPqTL1L99qcYD6AtBg0hGLmeQMCt1HfowWal2NxhhnZfkFgB4Ue8P7
         ISWQHbnFYLkzIrx7ev19Y9SBRmRoeze8zeBum72kYBDzT++cR8OglOGlDS/7YphAQMQc
         7xeBWaSaLIiTJjg+uEFnswvROkV/9xGtRYSrDGLhVRqCNw0q44DTnZc6NMj1q2Dutq91
         ZaUi0VwI5e2+JYvwj3ZKv/QfeOOS/LQwAJgHf/3yzDF3oSXVSP+qwcFp9sAVpE+QXBMh
         HhMw==
X-Gm-Message-State: AFqh2krNIKNGS0+Z+H56vBYF4i3/RYWnYMdvc3gSU3Yc+DZGRo9rV3NE
	HM1wBpVN2ZVB1SO2Z6xk+XKKpg==
X-Google-Smtp-Source: AMrXdXsOSisp+SnbTKLWuVOng0nj+csLrTEKupg1J6PgyZ1aQ/kMu0a27LLno5vdQZS39iibZqWZCw==
X-Received: by 2002:a05:6a20:1bc7:b0:b8:653a:6376 with SMTP id cv7-20020a056a201bc700b000b8653a6376mr21850436pzb.2.1674458254574;
        Sun, 22 Jan 2023 23:17:34 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a15f:3847:3e45:1d7:787c])
        by smtp.gmail.com with ESMTPSA id e3-20020a17090301c300b00172cb8b97a8sm17742091plh.5.2023.01.22.23.17.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Jan 2023 23:17:33 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	FUKAUMI Naoki <naoki@radxa.com>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH v2 3/4] arm64: dts: rockchip: Drop unneeded model for Radxa CM3i
Date: Mon, 23 Jan 2023 12:46:52 +0530
Message-Id: <20230123071654.73139-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230123071654.73139-1-jagan@amarulasolutions.com>
References: <20230123071654.73139-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230122_231735_696486_7484D3CE 
X-CRM114-Status: GOOD (  11.42  )
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

V2l0aCBtb2R1bGUgYW5kIGNhcnJpZXIgYm9hcmQgdG9wb2xvZ3ksIGNhcnJpZXIgYm9hcmQgZHRz
IHdpbGwgaW5jbHVkZQptb2R1bGUgZHRzaSBmaWxlcyBmb3IgY3JlYXRpbmcgY29tcGxldGUgcGxh
dGZvcm0uCgpUaGUgY2FycmllciBib2FyZCBkdHMgd2lsbCBoYXZlIGZpbmFsIG1vZGVsIG5hbWUg
YW5kIGNvbXBhdGlibGUgc3RyaW5nCnNvIGFueSBtb2RlbCBuYW1lIGFkZGVkIGluIG1vZHVsZSBk
dHNpIHdpbGwgZXZlbnR1YWxseSByZXBsYWNlZC4KClRoaXMgaGFwcGVuZWQgZm9yIGFueSBkZXZp
Y2V0cmVlIHByb3BlcnR5IGlmIHRoZSBzYW1lIHByb3BlcnR5IGlzIHVwZGF0ZWQKb3IgYWRkZWQg
dHdpY2UuCgpTbywgZHJvcCB0aGlzIHVubmVlZGVkwqBtb2RlbCBuYW1lIGZyb20gbW9kdWxlIGR0
c2kuCgpDYzogQ2h1a3VuIFBhbiA8YW1hZGV1c0BqbXUuZWR1LmNuPgpTaWduZWQtb2ZmLWJ5OiBK
YWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KLS0tCkNoYW5nZXMgZm9yIHYy
OgotIG5vbmUKCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yYWR4YS1jbTNp
LmR0c2kgfCAxIC0KIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcmFkeGEtY20zaS5kdHNpIGIvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcmFkeGEtY20zaS5kdHNpCmluZGV4IDIy
NWRiYmU0OTU1ZC4uYzUwZmJkZDQ4NjgwIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU2OC1yYWR4YS1jbTNpLmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1NjgtcmFkeGEtY20zaS5kdHNpCkBAIC02LDcgKzYsNiBAQAogI2luY2x1
ZGUgInJrMzU2OC5kdHNpIgogCiAvIHsKLQltb2RlbCA9ICJSYWR4YSBDTTMgSW5kdXN0cmlhbCBC
b2FyZCI7CiAJY29tcGF0aWJsZSA9ICJyYWR4YSxjbTNpIiwgInJvY2tjaGlwLHJrMzU2OCI7CiAK
IAlhbGlhc2VzIHsKLS0gCjIuMjUuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
