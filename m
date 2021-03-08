Return-Path: <SRS0=fRcm=IG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CE56C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 23:39:46 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D4F8664F96
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 23:39:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D4F8664F96
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4mAVb1bOT+L3+an+yEVCGtGRrq9JPjilM4wdqUjCuvk=; b=kCilqFM2MRoL99Wk8LOZ0LY3u
	Q29Bu9Im57/FHGvalzLH7pDid2ZAaALzLhB7fsKP/8oivUBo4DVR84XmqZ2VCYO9OUu/TzWgsk6wo
	qymJyqpQ8uFkYJopRk4d7WW1ib51kWrUeATY2vnXpQ9sn1S865xKC9dHOssJgjp6HJqFjqlxzezAx
	yTwlnkzx/93wDdkCyRiNKGJeBEJv/SvSsOKE2yUaIIKbdWoHQK5fjs/uzCEIbtknQ4WMqj5l000/P
	nYKEAjdsZ5a/uBDu8u0OnWVXE0amL8bwvCK3q8rvNCBV2AaSOoAUxuSL0zKafkjJi0sT5PjvDSlI1
	Z19mO60Cg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJPTO-003OHO-Sg; Mon, 08 Mar 2021 23:39:39 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJPTB-003OEP-Dz
 for linux-rockchip@lists.infradead.org; Mon, 08 Mar 2021 23:39:27 +0000
Received: by mail-wm1-x336.google.com with SMTP id
 d139-20020a1c1d910000b029010b895cb6f2so4827229wmd.5
 for <linux-rockchip@lists.infradead.org>; Mon, 08 Mar 2021 15:39:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cNI4lb320b0g3N9E/pXmEbLu1U21wMPwIZ392wgv3s0=;
 b=YcPsI338+uXPcczjZIr4QmN6Oyh6oeU8GRI3DSZWU3u/MWJjM8XgFa0Gb8xQ60FIuJ
 lzjDln7EN43CZ2axKiPiz31vDsxWjGmobql/eL7UYG7y3XCNXVZk5UCCwxpiaNGsupRK
 0f05SH8UHs6G8D+vBiqFwlx6hjdrJfaT/0qeKJAv9gkTBqc18h9tmUqiebabPE7IIu1f
 iBRI34fSmAX3HLjR1L/DolojefjT/AiXjNQEwdPcFxTHxONrme0Op9ywkzOJgH1A0wf2
 oXzx4B+03hMEdrUn3qIrj2ju5Y3+wdE0SIE2LEVe+KsvcpHeHGV3vgcvilfsF4BYcQML
 YStw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cNI4lb320b0g3N9E/pXmEbLu1U21wMPwIZ392wgv3s0=;
 b=WG4uu2Tf4gdPiYCXH+fBx1fKibivZ3MCHlHkcK7dxf65q3h3JRV5ABaiN6U9w3/T9R
 5td+QA1UeAh4V3+NNHdsHMM4ms4gsH7AR+WwujOjeVNQERQoeFgDzkjkVzwjPvSGd7dm
 6QdykNsd4o3SZsTVO+b3ewin1GJfjPpqEatf333yZqtAtL36vp3K7+B77ObyevCsgbs+
 ojsX/Xr8sLURJpfbRhhzeHFSlUaCSzDrXRDGRljX78zVJFzfJQdvfs8TOVA6/7a7xGms
 IBYp/UaQCGmfmiZQoLn9vCyDElw9rMJJGMTsURTJaG8icQ3+ASk+M5kN2WyrkKphyZYZ
 qgDA==
X-Gm-Message-State: AOAM531WP7uo4Xa0AH2LZ+LFMso93vbFELCbfRmnLo6lkOFBYfYifD8L
 xyYvxccfgMkkVnalMC2zqv+aKg==
X-Google-Smtp-Source: ABdhPJzyFTtVk78UxQ9gsfuWPRMnCDwLJyL02l9xh21o6mqTHpXZXVEojYMD8BQd+qOCQw4hoQxpqA==
X-Received: by 2002:a05:600c:289:: with SMTP id
 9mr1023445wmk.135.1615246765017; 
 Mon, 08 Mar 2021 15:39:25 -0800 (PST)
Received: from localhost.localdomain
 (lns-bzn-59-82-252-141-80.adsl.proxad.net. [82.252.141.80])
 by smtp.gmail.com with ESMTPSA id b186sm1145408wmc.44.2021.03.08.15.39.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 15:39:24 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Lin Huang <hl@rock-chips.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 =?UTF-8?q?Ga=C3=ABl=20PORTAY?= <gael.portay@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 Helen Koike <helen.koike@collabora.com>, Chen-Yu Tsai <wens@csie.org>,
 Jacob Chen <jacob2.chen@rock-chips.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), linux-kernel@vger.kernel.org (open list)
Subject: [RESEND PATCH v5 2/4] arm64: dts: rk3399: Add dfi and dmc nodes.
Date: Tue,  9 Mar 2021 00:38:56 +0100
Message-Id: <20210308233858.24741-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210308233858.24741-1-daniel.lezcano@linaro.org>
References: <20210308233858.24741-1-daniel.lezcano@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210308_233925_620220_CB6FF04D 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RnJvbTogTGluIEh1YW5nIDxobEByb2NrLWNoaXBzLmNvbT4KClRoZXNlIGFyZSByZXF1aXJlZCB0
byBzdXBwb3J0IEREUiBEVkZTIG9uIHJrMzM5OSBwbGF0Zm9ybS4KClNpZ25lZC1vZmYtYnk6IExp
biBIdWFuZyA8aGxAcm9jay1jaGlwcy5jb20+ClNpZ25lZC1vZmYtYnk6IEVucmljIEJhbGxldGJv
IGkgU2VycmEgPGVucmljLmJhbGxldGJvQGNvbGxhYm9yYS5jb20+ClNpZ25lZC1vZmYtYnk6IEdh
w6tsIFBPUlRBWSA8Z2FlbC5wb3J0YXlAY29sbGFib3JhLmNvbT4KU2lnbmVkLW9mZi1ieTogRGFu
aWVsIExlemNhbm8gPGRhbmllbC5sZXpjYW5vQGxpbmFyby5vcmc+Ci0tLQogYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRzaSB8IDE5ICsrKysrKysrKysrKysrKysrKysKIDEg
ZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszMzk5LmR0c2kKaW5kZXggZWRiYmYzNWZlMTllLi42ZjIzZDk5MjM2ZmUgMTAwNjQ0Ci0t
LSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kKKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRzaQpAQCAtMTkzNyw2ICsxOTM3LDI1IEBA
CiAJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CiAJfTsKIAorCWRmaTogZGZpQGZmNjMwMDAwIHsKKwkJ
cmVnID0gPDB4MDAgMHhmZjYzMDAwMCAweDAwIDB4NDAwMD47CisJCWNvbXBhdGlibGUgPSAicm9j
a2NoaXAscmszMzk5LWRmaSI7CisJCXJvY2tjaGlwLHBtdSA9IDwmcG11Z3JmPjsKKwkJaW50ZXJy
dXB0cyA9IDxHSUNfU1BJIDEzMSBJUlFfVFlQRV9MRVZFTF9ISUdIIDA+OworCQljbG9ja3MgPSA8
JmNydSBQQ0xLX0REUl9NT04+OworCQljbG9jay1uYW1lcyA9ICJwY2xrX2Rkcl9tb24iOworCQlz
dGF0dXMgPSAiZGlzYWJsZWQiOworCX07CisKKwlkbWM6IGRtYyB7CisJCWNvbXBhdGlibGUgPSAi
cm9ja2NoaXAscmszMzk5LWRtYyI7CisJCXJvY2tjaGlwLHBtdSA9IDwmcG11Z3JmPjsKKwkJZGV2
ZnJlcS1ldmVudHMgPSA8JmRmaT47CisJCWNsb2NrcyA9IDwmY3J1IFNDTEtfRERSQz47CisJCWNs
b2NrLW5hbWVzID0gImRtY19jbGsiOworCQlzdGF0dXMgPSAiZGlzYWJsZWQiOworCX07CisKIAlw
aW5jdHJsOiBwaW5jdHJsIHsKIAkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzOTktcGluY3Ry
bCI7CiAJCXJvY2tjaGlwLGdyZiA9IDwmZ3JmPjsKLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
