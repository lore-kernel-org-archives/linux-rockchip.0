Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6783BC678D4
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jan 2023 10:55:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cmtyXOdhSxgETmydtDFCPHFnUihIlU6Qt2VNZYWszNA=; b=jlENMD4s4mNNXi
	Bk7isJiSfkMpd0Uo+jwEPf+0tvjulGc9ZBoo7+bKGmxRBTPPx3jU1VVNn2ifGtoBwG4bErWMPNQQc
	Ax6QWqP7wChtKjGtXwp4Tixo85EEnZrtF8euXD6+bXvJBenilgtOQT42Z+Euln4NKQ5BCaExIzjTX
	UOUgQm4w+9fN4kZFtXVuJozuhyuNNTgq4cfV1FZ3ywF42xL8m+RUK0DpmSyEG9qm01aqk1DS4WgEy
	Gs7iFo+WIRvdYncJhsioGWeFU2hlfw9nEfSBs8hqWvIysGvv34/vvK7zcGSg4BQr5J2WRcFZCfzKn
	HDnrxdmLGhM1W/bV9yLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHjd5-00Ds3D-2z; Tue, 17 Jan 2023 10:55:47 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHjcj-00Drse-ET
	for linux-rockchip@lists.infradead.org; Tue, 17 Jan 2023 10:55:26 +0000
Received: by mail-pf1-x436.google.com with SMTP id y5so23140792pfe.2
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jan 2023 02:55:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fJtlHTF1df2A4QOlLz/TKZ1XjsPQU9/4l4s+9UMdIZk=;
        b=kFh241HwYWmbl4x1/yagUljldgPrlmPtvL5XHrexyBctIdoiAPJfCUWEaLkCSxn/GR
         MYHy5gW4MJwVlqrhgyrBUQuf2tRxSEFKHsli8ZFMaRFZxhgtYoYw+G7QWcPQOLxtH9n2
         rq350DftfAKkfPPf/Ye68bXh35jM+4WPOtfyQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fJtlHTF1df2A4QOlLz/TKZ1XjsPQU9/4l4s+9UMdIZk=;
        b=GlliUYHb7dQLx0JgBXWGtzxzluRq4Jc9r20XlSn+nL1BhpfIDyoDHlxY6QL0YkG8sq
         oc74jMn0lgR66KqIFxzYfm3obQ2p/SNn7hfZXG/OFY4GDi7b4RgKoCZqOpnq/z3nc4Zv
         g8INs4s1o44PWhYYRPeuQ5agDSu2JzyOqx/qLUtlTyNR/b1/4ls4QuvzFWDkN55x0Nlt
         F+309xwbCCGct2h7tRmOaj6mmknm7umRaB4HdeRh53SDsifqMT/8MWvBF/HWce6svWZA
         HTxWy3z04AJU+XHcflrOqPv7ZLlNJ8/rK3673hsdaPAU+mCex+WQiZCexZbflt0IKnfM
         F7IA==
X-Gm-Message-State: AFqh2kpFNc9SMS+Hb3Jl8eEQFDEWeXQmpTTdjMRTtiAoxPt3IazOY5Wn
	GWE1LN0ykPWk/0w+tFQltEtzWg==
X-Google-Smtp-Source: AMrXdXsPDMqwTVNS1gDyLpPkddAuu0QHiS066qXAINEfq7x9//tUGuC7qb5GYz+YpGg492whi0urCg==
X-Received: by 2002:a62:be0f:0:b0:588:d6c1:66f9 with SMTP id l15-20020a62be0f000000b00588d6c166f9mr2526471pff.31.1673952923409;
        Tue, 17 Jan 2023 02:55:23 -0800 (PST)
Received: from localhost.localdomain ([45.249.78.214])
        by smtp.gmail.com with ESMTPSA id w65-20020a623044000000b0056c349f5c70sm19837413pfw.79.2023.01.17.02.55.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 02:55:22 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jagan Teki <jagan@amarulasolutions.com>,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH 2/7] arm64: dts: rockchip: Add missing CM3i fallback compatible for Radxa E25
Date: Tue, 17 Jan 2023 16:24:59 +0530
Message-Id: <20230117105504.18296-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230117105504.18296-1-jagan@amarulasolutions.com>
References: <20230117105504.18296-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_025525_489379_575BD886 
X-CRM114-Status: GOOD (  12.31  )
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

SW4gb3JkZXIgdG8gZnVuY3Rpb24gdGhlIFJhZHhhIEUyNSBDYXJyaWVyIGJvYXJkLCBpdCBpcyBt
YW5kYXRvcnkgdG8KbW91bnQgdGhlIFJhZHhhIENNM2kgbW9kdWxlLsKgCgpBZGQgUmFkeGEgQ00z
aSBjb21wYXRpYmxlIGFzIGZhbGxiYWNrIGNvbXBhdGlibGUgdG8gc3RyaW5nIHRvIHNhdGlzZnkK
dGhlIE1vZHVsZSBhbmQgQ2FycmllciBib2FyZCB0b3BvbG9neS4KCkZpeGVzOiAyYmYyZjRkOWY2
NzMgKCJhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIFJhZHhhIENNM0kgRTI1IikKQ2M6IENodWt1
biBQYW4gPGFtYWRldXNAam11LmVkdS5jbj4KU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFn
YW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1NjgtcmFkeGEtZTI1LmR0cyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTY4LXJhZHhhLWUyNS5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU2OC1yYWR4YS1lMjUuZHRzCmluZGV4IGZiOTYwMTliMGU4Ny4uYTRjMzMzMTBjYTQyIDEw
MDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yYWR4YS1lMjUu
ZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXJhZHhhLWUyNS5k
dHMKQEAgLTUsNyArNSw3IEBACiAKIC8gewogCW1vZGVsID0gIlJhZHhhIEUyNSI7Ci0JY29tcGF0
aWJsZSA9ICJyYWR4YSxlMjUiLCAicm9ja2NoaXAscmszNTY4IjsKKwljb21wYXRpYmxlID0gInJh
ZHhhLGUyNSIsICJyYWR4YSxjbTNpIiwgInJvY2tjaGlwLHJrMzU2OCI7CiAKIAlhbGlhc2VzIHsK
IAkJbW1jMCA9ICZzZG1tYzA7Ci0tIAoyLjI1LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
