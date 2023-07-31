Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88F9CC001DE
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 10:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lgIbXnTq6pZV60omiNTXSwYWmAKKs4Vhw5nPVAEcc6U=; b=dxoHjErmsqMC7T
	ifpsORvRasFoWeo0wEB03+cjOdPQe/JiCuxlsDRWM/LLUTOc+e84NzIbNf/H8LMF5fPrn/4AKK8cL
	NpRw56nKDcFewUK78Nkq8e4eeorDEpYalYlvSP7PRJ77P9Lm/8elzowef7LyD+xyR0PjAW9j32zXD
	ik88Xrbp7R8ChsbwSuELfmXlhxes5vRlggoxzRRWQyIkrz1PV5g8WFshX7GcjNykG3qq8iRGJi0dk
	qgfeHOzH6BchMT6lM6AQiVe1b0OgkjhDnm3+mdWwAGf4YrFnRFBBBNQoirUeuFjojEBTSOw4SL0Kl
	4aDQlPFJB0LBToey7nBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQFn-00F6bu-0V;
	Mon, 31 Jul 2023 10:35:55 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQFk-00F6Za-2C
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 10:35:53 +0000
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-68706d67ed9so2415398b3a.2
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 03:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690799752; x=1691404552;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j/jFm2EzRpW7YYRmDR1o3UOuJLAvOI+SSUOIxC7DbfY=;
        b=3Q8MaEX0FCITILh4l23NdZ2/fektqPWl0L0cwzxnKJ8H3Mpn7FgkyUhoVsGe4TKNu0
         A2jc3GzdQvpCg+PTgThwmm07h415Db1UHUsew63eeOrNbp6ogVqHPGrVWxAT0KI3QpuU
         vaK/A7XzHrvKXZzgDwqUk2/JH9OViutmle/jPAV8mssQYJljZ+T4ro7ktlvWfdL5tQip
         RHd1d3OCpN8JSzPMykmoud6EhfAW9C3hlEAS9v1zpQwTw1MKT8+QVm2Ib091G+7q/1Us
         M4BWg/g4PPEAjdHsIi3sSli3kl1KOeFJkH02GjuGSpSWQkAfU6Yl4+op+MFP2X7N7HBL
         GDBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690799752; x=1691404552;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j/jFm2EzRpW7YYRmDR1o3UOuJLAvOI+SSUOIxC7DbfY=;
        b=OzY1LxvjOnaKeugLHCBDOeSCQBHtZVjnoEpVIONPORyhvwLpgIi3wn4X8Du2GoKCPR
         G97tqUsZ5THEjb11QdnjIGhR2MDPLWYFz8+2KgZ9WlR5toJv0y1BZoTXicM/IUfc3dWF
         HgF7CAcfLddo1JrPxJjev2wgw+N2eXUJ2YfTSoCye6weFzhqDL6czgWmUBkaQgXmhql9
         OQBfSU/g1Fo9rp/AVkoCnm2eIm6Uhk6LNAHrFYowIR8xsT7lKWA66fCRvq1/j2vX6a8A
         VBvmk/1HLcEFCBssHaqY5LRYF7t0RTCrT0MUiWZk+BTLxWBqKnxv6xM3+ysxbmhRB/90
         LdKA==
X-Gm-Message-State: ABy/qLZFBYqJONIHJCmd2M0NTqgnaGU1/EzA+BrqXsUOxFqsnD3Hq2U0
	UohvAk9YCqevm8JpbywPl+6iOw==
X-Google-Smtp-Source: APBJJlEASV+m7M7Ne+9wp9+AGK/il4FTsj4zAPmMSVbef7qpRBcvAXj1Ug4zaIDvsKBhTv8lZH4Lvw==
X-Received: by 2002:a05:6300:8005:b0:12d:4c17:bb2d with SMTP id an5-20020a056300800500b0012d4c17bb2dmr9331462pzc.26.1690799751926;
        Mon, 31 Jul 2023 03:35:51 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id c13-20020aa7880d000000b00640f51801e6sm5906115pfo.159.2023.07.31.03.35.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:35:51 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>,
	linux-pwm@vger.kernel.org,
	Thierry Reding <thierry.reding@gmail.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: [PATCH 01/13] dt-bindings: pwm: rockchip: Document rv1126-pwm
Date: Mon, 31 Jul 2023 16:05:06 +0530
Message-Id: <20230731103518.2906147-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731103518.2906147-1-jagan@edgeble.ai>
References: <20230731103518.2906147-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_033552_721611_825E87C5 
X-CRM114-Status: GOOD (  10.01  )
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

RG9jdW1lbnQgcHdtIGNvbXBhdGlibGUgZm9yIHJ2MTEyNiB3aGljaCBpcyBmYWxsYmFjayBjb21w
YXRpYmxlCm9mIHJrMzMyOC1wd20gZ3JvdXAuCgpTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxq
YWdhbkBlZGdlYmxlLmFpPgotLS0KQ2M6IGxpbnV4LXB3bUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IFRo
aWVycnkgUmVkaW5nIDx0aGllcnJ5LnJlZGluZ0BnbWFpbC5jb20+CkNjOiAiVXdlIEtsZWluZS1L
w7ZuaWciIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+CgogRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9wd20tcm9ja2NoaXAueWFtbCB8IDEgKwogMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3B3bS9wd20tcm9ja2NoaXAueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9wd20vcHdtLXJvY2tjaGlwLnlhbWwKaW5kZXggZjJkMWRjN2U3YjNmLi42
NWJmYjQ5MmIzYTQgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9wd20vcHdtLXJvY2tjaGlwLnlhbWwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3B3bS9wd20tcm9ja2NoaXAueWFtbApAQCAtMzIsNiArMzIsNyBAQCBwcm9wZXJ0aWVz
OgogICAgICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzMwOC1wd20KICAgICAgICAgICAgICAgLSBy
b2NrY2hpcCxyazM1NjgtcHdtCiAgICAgICAgICAgICAgIC0gcm9ja2NoaXAscmszNTg4LXB3bQor
ICAgICAgICAgICAgICAtIHJvY2tjaGlwLHJ2MTEyNi1wd20KICAgICAgICAgICAtIGNvbnN0OiBy
b2NrY2hpcCxyazMzMjgtcHdtCiAKICAgcmVnOgotLSAKMi4yNS4xCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
