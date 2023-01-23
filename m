Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B336C05027
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jan 2023 07:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f5YCfCWMzxGiTvgbhrFkNtbmmQ+5S1MN43MmIz19OPY=; b=TsS4mMzYQzLWtM
	FqmBIzjAivdNu4fYvkuZm2udfdjyTvdGr0bkygyPQECVQMA9xo8NkZp+c2Wz6Wt/xsuFX3ocPkKp7
	OigyK2pZ/oeIF81K3Zwxgsvc0lRKW/xH8zJJgp6JUje02MiMUjMNWNBrJE2ev4OAaQn6gMNOYWeWH
	hwcSN657lMjhhzcpsGmNqjQMyW2ANYxCS6iHsvT2l26kIwjwpDoBak/j65Ut/VHhOpKrq0sKNdb96
	SDbg4nD26czulfWHElMiW1/XPaDz1pjgrKFeI2yQLBccr3wO9Ektxyiv2LoqqlRjJsPiho7OKzCqh
	QGdHNdvg4dPYgEVZ+6HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJr5o-00GBA7-BK; Mon, 23 Jan 2023 07:18:12 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJr56-00GAu7-7Z
	for linux-rockchip@lists.infradead.org; Mon, 23 Jan 2023 07:17:30 +0000
Received: by mail-pj1-x1029.google.com with SMTP id t12-20020a17090aae0c00b00229f4cff534so5782454pjq.1
        for <linux-rockchip@lists.infradead.org>; Sun, 22 Jan 2023 23:17:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nMwonOiSUVp9jhT90JcUAzZvSTpZ6/Yz1M6VtYsU3xE=;
        b=CQIlqmQAloiuVIqAm5JZ1Bk2PqJWFMwN8DX8XROZo/z+rWmcVm75yRw9ovQyokUyYT
         g1IGiBCEfgZ3PXfjw18lx0k1UHzJj3zLlyfye29ULiXhcUT3E1YQambsJYa57pmrjk1l
         MctNVSrMcKQOg/gjp4AtQjpbBCikx3eMd8ywg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nMwonOiSUVp9jhT90JcUAzZvSTpZ6/Yz1M6VtYsU3xE=;
        b=aHOqCo4suAImvcV9od/u7mlMMDvi77+89zHpy20iYKz9b5D6CojgPNNNebwSsmaG6c
         kf+wxcs+gv+grucZUdyI5zOE+egZJU4kPeHZfiuu8Bw7FKUDUY2/nPH5AzV38JYyO/0G
         pM9RQr6L+fyKI8Gcx8ceoZp7hcjswrhYW3oqlfnGcpOZARQkoBItEb4kpirRvsKFoiWt
         FjSDT901ENOc575o1ZLLVhHDITPqK3grYMNseYA3qfd3l/CL54TJj3aA3koL/mErymSJ
         7Ro5UPfdondsDO8Fc4cbTr30XPffBMQO+TXruJcw6MZSdQ0E9Zv0LboPIw0ktG6kOyJi
         ndoA==
X-Gm-Message-State: AFqh2krDNyBz6mYiFkFEchvnG9NhFALC7/auafH+mWbkxI4ubFfOwuNa
	uSr6Z0B17t5W3EMkOpPSzUcsRw==
X-Google-Smtp-Source: AMrXdXvUu2JbWD9FpaP1gO1cV4kQmyV69aEA3EdyJN8SBgUCbshXSTxactSZpS/eyxpH+6ZvLEoCFA==
X-Received: by 2002:a05:6a20:7fa5:b0:b9:4afb:1472 with SMTP id d37-20020a056a207fa500b000b94afb1472mr21863315pzj.13.1674458246817;
        Sun, 22 Jan 2023 23:17:26 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a15f:3847:3e45:1d7:787c])
        by smtp.gmail.com with ESMTPSA id e3-20020a17090301c300b00172cb8b97a8sm17742091plh.5.2023.01.22.23.17.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Jan 2023 23:17:26 -0800 (PST)
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
Subject: [PATCH v2 2/4] arm64: dts: rockchip: Add missing CM3i fallback compatible for Radxa E25
Date: Mon, 23 Jan 2023 12:46:51 +0530
Message-Id: <20230123071654.73139-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230123071654.73139-1-jagan@amarulasolutions.com>
References: <20230123071654.73139-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230122_231728_371053_5D29A9E6 
X-CRM114-Status: GOOD (  11.56  )
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
YW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Ci0tLQpDaGFuZ2VzIGZvciB2MjoKLSBub25lIAoKIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXJhZHhhLWUyNS5kdHMgfCAyICstCiAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQg
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yYWR4YS1lMjUuZHRzIGIvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcmFkeGEtZTI1LmR0cwppbmRleCAwMzcy
ZGQ5N2MzOTIuLjlmYzk0NTk1MDViZCAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1NjgtcmFkeGEtZTI1LmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU2OC1yYWR4YS1lMjUuZHRzCkBAIC01LDcgKzUsNyBAQAogCiAvIHsKIAltb2Rl
bCA9ICJSYWR4YSBFMjUiOwotCWNvbXBhdGlibGUgPSAicmFkeGEsZTI1IiwgInJvY2tjaGlwLHJr
MzU2OCI7CisJY29tcGF0aWJsZSA9ICJyYWR4YSxlMjUiLCAicmFkeGEsY20zaSIsICJyb2NrY2hp
cCxyazM1NjgiOwogCiAJYWxpYXNlcyB7CiAJCW1tYzEgPSAmc2RtbWMwOwotLSAKMi4yNS4xCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
