Return-Path: <SRS0=fRcm=IG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75B47C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 23:39:43 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 185966527D
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 23:39:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 185966527D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7Q2mxbZnnckMjHGJPIaYXXqfJ9BQFaDd10IeQpXVgso=; b=hwPjrDTTR1icRyc8jqxDRiGQ+a
	HJ6u56uI60l/XjK/VW8tfRTxLVmh5hAJ/FHetT/ClH24VZN033LVt003DTPHUc9tSbc0qo5BFlIPT
	tU+Y2zb9mcekM3+2SnUlUF+5WR5i9KDhurBQbzoi4KFXBYjDlAVHBTkkL2gJ/8uFM7tMWYm9hQgDC
	W4NgVWTLKilpG23Zm+jGvVtu2m8IzFW0TL0w0hha9pH6R2Q53M/KSCRG6RPviongxyuAoJEmSVwY2
	rDDJzLT9OLneWM4rMJTD0CiUttS2bYkw3K9jdsWvOb2PeFNi6KNoA1K+4pn8Z9YQRPoiuOdhrt1BW
	bw16uiyA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJPTN-003OGr-Fq; Mon, 08 Mar 2021 23:39:37 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJPT8-003ODZ-QT
 for linux-rockchip@lists.infradead.org; Mon, 08 Mar 2021 23:39:24 +0000
Received: by mail-wm1-x336.google.com with SMTP id
 b2-20020a7bc2420000b029010be1081172so4831500wmj.1
 for <linux-rockchip@lists.infradead.org>; Mon, 08 Mar 2021 15:39:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eqyLkN28+VbZJ1BodN0k6GRf4WGaBBOV7lcLbkfiJBQ=;
 b=Xh+k5bGSptAyjUDGZQnXgFqbHzAG1QPvOAA81X4+86hLvLLPcBkxJp7PAp0mXyk8gI
 yAvz8MiX/7rbhLuhxHMMxcYXxEfCti/hBoXil6MGBKkmQ7gkro9wSdEKf2JNbhliCu0i
 VbGbqiqJfX8rUQjvkdQPoX6VJcl7sHNQuPGt309aH7ih1/9xWv+z297uaGFlfS+3Rijh
 del9/iXKRiBxWOGvTcprNCOUtJ6jMglS3lo8yhrgrim/WBjV+AUkG5L2AEQx8hro87Wr
 NRIbt0HqoqkQMZi1jxQpNbkKrBHGUatDDf4hPFqyXQIcIxSQ12Z2yRweL5U8hyLgpJ3+
 +Eug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eqyLkN28+VbZJ1BodN0k6GRf4WGaBBOV7lcLbkfiJBQ=;
 b=orFtDTS1QsvnaB9qT6xO199/U25pep/YNrxyFYviQ7oyYW9HhRYWIJfJVw9PSu2QlQ
 rUKILzueuSPMDpyLuWAMnnEvCszY4GuiKLGgqmtxwGquMddyZ/r6qbtgVfpktbS2jXsQ
 2vlKxsfKRPVyto0SY0OIBlKuSGwfN3aIwtIJPVMeAmuSKE00JPqNdBjjYuBRo7Tso3oW
 vh97OtYEji9oAI8bMZpyRzz+WfK1OhpOU0bsPxOkpoTCKaljSbgwXUcGoAzuTdT6FxQB
 hkBLr/FxYvLGu2P1ehjkMtsVGqBKlGGnPA0odiy6/T59VUC0p8zX8MyFpmB3GA/Y6QV0
 b3kQ==
X-Gm-Message-State: AOAM5311QArsZQjCUvXfZTLv4yP2iwMj3EHkx/O/VbvwlGnNXAHS4ath
 3u0NSKKD/nE8e7M1bapHOKuwtw==
X-Google-Smtp-Source: ABdhPJx6PRCVhueYee+s5rTUuSEOQ5BGaZfr6qtVs+qF+7WlrvYJ8gsYqpzm7ZADmb/sCt4UW4mj3g==
X-Received: by 2002:a1c:9849:: with SMTP id a70mr1108634wme.48.1615246761430; 
 Mon, 08 Mar 2021 15:39:21 -0800 (PST)
Received: from localhost.localdomain
 (lns-bzn-59-82-252-141-80.adsl.proxad.net. [82.252.141.80])
 by smtp.gmail.com with ESMTPSA id b186sm1145408wmc.44.2021.03.08.15.39.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 15:39:21 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 =?UTF-8?q?Ga=C3=ABl=20PORTAY?= <gael.portay@collabora.com>,
 Rob Herring <robh@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 linux-pm@vger.kernel.org (open list:DEVICE FREQUENCY (DEVFREQ)),
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), linux-kernel@vger.kernel.org (open list)
Subject: [RESEND PATCH v5 1/4] dt-bindings: devfreq: rk3399_dmc: Add rockchip,
 pmu phandle.
Date: Tue,  9 Mar 2021 00:38:55 +0100
Message-Id: <20210308233858.24741-1-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210308_233923_065092_D070092A 
X-CRM114-Status: GOOD (  10.41  )
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

RnJvbTogRW5yaWMgQmFsbGV0Ym8gaSBTZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFib3JhLmNv
bT4KClRoZSBSb2NrY2hpcCBETUMgKER5bmFtaWMgTWVtb3J5IEludGVyZmFjZSkgbmVlZHMgdG8g
YWNjZXNzIHRvIHRoZSBQTVUKZ2VuZXJhbCByZWdpc3RlciBmaWxlcyB0byBrbm93IHRoZSBEUkFN
IHR5cGUsIHNvIGFkZCBhIHBoYW5kbGUgdG8gdGhlCnN5c2NvbiB0aGF0IG1hbmFnZXMgdGhlc2Ug
cmVnaXN0ZXJzLgoKU2lnbmVkLW9mZi1ieTogRW5yaWMgQmFsbGV0Ym8gaSBTZXJyYSA8ZW5yaWMu
YmFsbGV0Ym9AY29sbGFib3JhLmNvbT4KUmV2aWV3ZWQtYnk6IENoYW53b28gQ2hvaSA8Y3cwMC5j
aG9pQHNhbXN1bmcuY29tPgpBY2tlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4K
U2lnbmVkLW9mZi1ieTogR2HDq2wgUE9SVEFZIDxnYWVsLnBvcnRheUBjb2xsYWJvcmEuY29tPgpB
Y2tlZC1ieTogTXl1bmdKb28gSGFtIDxteXVuZ2pvby5oYW1Ac2Ftc3VuZy5jb20+ClNpZ25lZC1v
ZmYtYnk6IERhbmllbCBMZXpjYW5vIDxkYW5pZWwubGV6Y2Fub0BsaW5hcm8ub3JnPgotLS0KIERv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kZXZmcmVxL3JrMzM5OV9kbWMudHh0IHwg
MiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kZXZmcmVxL3JrMzM5OV9kbWMudHh0IGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RldmZyZXEvcmszMzk5X2RtYy50eHQKaW5k
ZXggYTEwZDFmNmQ4NWM2Li5hNDFiY2ZlZjk1YzggMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9kZXZmcmVxL3JrMzM5OV9kbWMudHh0CisrKyBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kZXZmcmVxL3JrMzM5OV9kbWMudHh0CkBAIC0xMiw2
ICsxMiw4IEBAIFJlcXVpcmVkIHByb3BlcnRpZXM6CiAJCQkgZm9yIGRldGFpbHMuCiAtIGNlbnRl
ci1zdXBwbHk6CSBETUMgc3VwcGx5IG5vZGUuCiAtIHN0YXR1czoJCSBNYXJrcyB0aGUgbm9kZSBl
bmFibGVkL2Rpc2FibGVkLgorLSByb2NrY2hpcCxwbXU6CQkgUGhhbmRsZSB0byB0aGUgc3lzY29u
IG1hbmFnaW5nIHRoZSAiUE1VIGdlbmVyYWwgcmVnaXN0ZXIKKwkJCSBmaWxlcyIuCiAKIE9wdGlv
bmFsIHByb3BlcnRpZXM6CiAtIGludGVycnVwdHM6CQkgVGhlIENQVSBpbnRlcnJ1cHQgbnVtYmVy
LiBUaGUgaW50ZXJydXB0IHNwZWNpZmllcgotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
