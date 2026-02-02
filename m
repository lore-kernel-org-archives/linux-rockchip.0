Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12936E7DEF0
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Feb 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O74psVs1co//YxHK0ml+/IwpnTedmTPRtNY/d+ZQqT0=; b=FtS42DO+aiNqyY
	jvy+FM3sK9vhCHQkpJINljEyhczpBJaS6+7Q3U2QzXaxWe34HwHplnabpfjyLc1jJzmHHBT3DczFm
	UBIIqKu6tb+tDFqwEWbB4TP3t3SjUeqbP6G4YbrV/tOmsqEZ8JJNF06hS5wcl4VyioWf2MbiaRQB+
	1qdJylzeRQ+SriGvPZ70pA/UmLYfc+QIOjJL2ArlUCj5NZatfvi1GAX2HoY+4E49rzNNcm9yolcts
	NOuFboAYuqMINESG46Ar4EvpuHYhfq2BhbmyQ5R7NHmUqWCWEfRGIarSfeGQpXERu/WmGo2raVLyV
	9GC2R6yY9PNOSNpZUTwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmvTt-000000059YU-1Nqn;
	Mon, 02 Feb 2026 15:04:49 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmvTr-000000059XF-0G4A
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Feb 2026 15:04:48 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-8231061d234so3837392b3a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Feb 2026 07:04:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770044686; x=1770649486; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TN24W9Be/pGggjAF58I51ue9vTrGNZtAUpOZWnn4qXs=;
        b=R2Ha8V+UElrUW5xa41xOceYl2W2l1gA7ccM+sqPApx33j/wpivrXRkj4pWXbTzFUMm
         55kDlyG2LkgJXXx0iV4ZmxNlSv1GgmwJ3i+pUgdNgbRVhstf3PG1NmOCAu4QkmaMeAw2
         /It6LG02cwdySTQzT++o4sdPUkiJx1xS6egjIejbfcV0zV65h6wKd0aidwCe21YV7Djv
         Sdm1QdSTUdmUOedvGMeboZ30kVJKmGEXUn8Jk1yWQ8HaenJ5JoqaZuZpNZJ44Th2VK6J
         nnICpRpNwpeQQf+Lz/yK4qpfDSMQliRIDdjdVLaI4ElvBg6d5as5SExebtzcZ2rwillJ
         eT9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770044686; x=1770649486;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TN24W9Be/pGggjAF58I51ue9vTrGNZtAUpOZWnn4qXs=;
        b=lcSJPtcejX4aTdre9yAaXUztLQN+jzMZEl65UNUjC/J8txd96k4lFAOipbU0rGD94N
         NA+pNfjOFsMk+ISpAd+InE7YYFcr2cPAbLCgZCvxwyjxuI5gKDZ+2mk36Ql0ffW3HqAQ
         JwUC7M25uVUne99SOpngW3f0fF7H3d9oYSyylZWy+ZDWfiCxSark0vnCZyKGAThy/Nfp
         NieRO/qWGKzoRcZdcYqpkRt1JOC0+k965y6t0mR3DGpKaj0qRf9/w9k/8HYEdU1U0KQ9
         kpYVWe0TBLlguQfy9NjRo+7gUcMJuV6el9N2+qIdLB+81sIMW3ekini0pp+SCjHm4kw6
         9Hfg==
X-Forwarded-Encrypted: i=1; AJvYcCVU2MQh9vCrOnk/OMgQVhFYB9DARw33PV6e7cAlaQDcjyIRo1AuIJTF0UeGVf2srtgUpwucj578rBmpoL6zGw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyryepNdI0kv9AMZNgtD3xHpmQV9A/1qJ1G9Wl6r0tU+i2sZuy3
	yFeW6RpgJCARWHn51M8+QtFLL+I3AUZXDhM/gRrClqQVkZwDd2HvFWYpQxDJub34
X-Gm-Gg: AZuq6aKOzUoVomNKn2AyU9mcZMDabsaC/MCYxUbngJI3E3cHLYe76qQrwcFm9i1u9Na
	TB300S02HrxMbWqL/9iqfQ/3gHNC9AO4cHKoHuUMvs/EyYlyw25359CjwEKjZzN7wtZs6Kv8iPz
	P7Ya2l3QBy7X6aanspphRJWkJC0j2pbw3fKSvXY7FWWt/ZHNiLjrGV44HegnN0KJain1cgVqa0d
	yMrw8Yo7ZV5Mk5IFpgBdkdg2SdiBlMs1pczjl5ooyIDG4y7VZSNwAcQzAmmycWRtmkX5p9BEnQg
	zexY9tcNCvkjfQZFO6bTh7hvwyC0W+pQX6ea8sziUmheLfJgm6Kov/j88z4HFvonwvb8c3q0iWz
	mwCFqlDkfTI0HJ/BONrmns2joAKmtR49/LyjDyU57gtZyGWXw4jeGNRdiN+daRKNpZDu9KM/Z3o
	FuWZzI52UG
X-Received: by 2002:a05:6a20:3d0a:b0:38e:95fb:3cc with SMTP id adf61e73a8af0-392e014e095mr10527227637.56.1770044685577;
        Mon, 02 Feb 2026 07:04:45 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a52:d2b1::1004])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379c21112sm15948480b3a.54.2026.02.02.07.04.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 07:04:45 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alchark@gmail.com,
	dsimic@manjaro.org,
	andyshrk@163.com,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH v3 0/3] board: rockchip: add OneThing Edge Cube series
Date: Mon,  2 Feb 2026 23:04:00 +0800
Message-ID: <20260202150437.270567-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260202_070447_146731_C6E8F199 
X-CRM114-Status: GOOD (  13.07  )
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

VGhpcyBzZXJpZXMgYWRkcyBzdXBwb3J0IGZvciB0aGUgT25lVGhpbmcgRWRnZSBDdWJlIHNlcmll
cywgUm9ja2NoaXAgClJLMzU2Ni1iYXNlZCBQQ0ROIChQMlAgQ29udGVudCBEZWxpdmVyeSBOZXR3
b3JrKSBkZXZpY2VzIG9yaWdpbmFsbHkgCm1hcmtldGVkIGJ5IE9uZVRoaW5nIFRlY2guCgpUaGUg
VjMgcGF0Y2ggbWVyZ2VzIHRoZSBzZXBhcmF0ZSBkdHMgZmlsZXMgZm9yIE9FQyBhbmQgT0VDLXR1
cmJvLApmb2xsb3dpbmcgRHJhZ2FuIFNpbWljJ3Mgc3VnZ2VzdGlvbi4KClRoZSBWMiBwYXRjaCBh
ZGRzIGEgbmV3IGRldmljZSwgdGhlIE9uZVRoaW5nIE9FQy4gVG9nZXRoZXIgd2l0aCB0aGUgClYx
IHBhdGNoIE9uZVRoaW5nIE9FQy10dXJibywgdGhlc2UgdHdvIGRldmljZXMgc2hhcmUgaWRlbnRp
Y2FsIGhhcmR3YXJlIApzcGVjaWZpY2F0aW9ucyBleGNlcHQgZm9yIHRoZSBSQU0gY2FwYWNpdHks
IGVuYWJsaW5nIGNvbnZlbmllbnQgc3VwcG9ydAppbXBsZW1lbnRhdGlvbi4KClRoZSBWMSBwYXRj
aCB3YXMgc3VibWl0dGVkIHF1aXRlIHNvbWUgdGltZSBhZ28gYW5kIGlzIG5vdyBpbiBhbiBhcmNo
aXZlZApzdGF0ZVsxXS4gaXQgaGFzIG5vdCBiZWVuIHByb2Nlc3NlZCBkdWUgdG8gc2NoZWR1bGlu
ZyBjb25mbGljdHMg4oCTCmFwb2xvZ2llcyBmb3IgdGhpcy4KCkNoYW5nZXMgaW4gdjM6Ci0gVXNl
IGEgc2luZ2xlIGRldmljZSB0cmVlIGZvciBib3RoIE9FQyBhbmQgT0VDLXR1cmJvLgotIEFsaWdu
IHRoZSBjb21wYXRpYmxlIHN0cmluZ3MgaW4gZHQtYmluZGluZ3MgYW5kIGRldmljZSB0cmVlLgot
IExpbmsgdG8gdjI6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI2MDEzMTE1MzEwNi4z
MTcyMy0xLWplcnJ5c3RldmUxMTAxQGdtYWlsLmNvbS8KCkNoYW5nZXMgaW4gdjI6Ci0gRml4IHR5
cG8gaW4gdmVuZG9yLXByZWZpeGVzLgotIFNpbXBsaWZ5IGNvbXBhbnkgYW5kIGRldmljZSBuYW1l
cy4KLSBBZGQgdGhlIG5ldyBkZXZpY2UgT0VDIGFzIHBhcnQgb2YgdGhlIE9uZVRoaW5nIEVkZ2Ug
Q3ViZSBzZXJpZXMgZm9yIHN1cHBvcnQuCi0gU2V0IGRpc3BsYXktc3Vic3lzdGVtIG5vZGUgdG8g
ImRpc2FibGVkIiBpbnN0ZWFkIG9mIHVzaW5nICJkZWxldGUtbm9kZSIuCi0gVXNpbmcgZ2VuZXJp
YyBub2RlIG5hbWVzIGZvciBsZWRzLgotIEZvbGxvdyBEVFMgY29kZWluZyBzdHlsZSBpbiB2Y2M1
djBfdXNiX2hvc3RfZW4gcGluY3RybCBub2RlLgotIE1vZGlmeSB0aGUgcGh5X21vZGUgb2YgR01B
QyBmcm9tIHJnbWlpIHRvIHJnbWlpLWlkLgotIEFkanVzdCBkZXZpY2UgdHJlZSBub2RlIG9yZGVy
aW5nIHRvIGZvbGxvdyBjb2RlIHN0eWxlLgotIExpbmsgdG8gdjE6IGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2FsbC8yMDI1MDcxMzE2MzI1NS4xNjM2NjktMS1qZXJyeXN0ZXZlMTEwMUBnbWFpbC5j
b20vCgpbMV0gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LXJvY2tj
aGlwL2NvdmVyLzIwMjUwNzEzMTYzMjU1LjE2MzY2OS0xLWplcnJ5c3RldmUxMTAxQGdtYWlsLmNv
bS8KCkp1biBZYW4gKDMpOgogIGR0LWJpbmRpbmdzOiB2ZW5kb3ItcHJlZml4ZXM6IEFkZCBTaGVu
emhlbiBPbmVUaGluZyBUZWNobm9sb2dpZXMgQ28uLAogICAgTHRkLgogIGR0LWJpbmRpbmdzOiBh
cm06IHJvY2tjaGlwOiBBZGQgT25lVGhpbmcgRWRnZSBDdWJlIHNlcmllcwogIGFybTY0OiBkdHM6
IHJvY2tjaGlwOiBBZGQgT25lVGhpbmcgRWRnZSBDdWJlIHNlcmllcwoKIC4uLi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sICAgICB8ICAgNiArCiAuLi4vZGV2aWNldHJlZS9i
aW5kaW5ncy92ZW5kb3ItcHJlZml4ZXMueWFtbCAgfCAgIDIgKwogYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9NYWtlZmlsZSAgICAgICAgIHwgICAxICsKIC4uLi9yb2NrY2hpcC9yazM1NjYt
b25ldGhpbmctb2VjLXNlcmllcy5kdHMgICB8IDMxMiArKysrKysrKysrKysrKysrKysKIDQgZmls
ZXMgY2hhbmdlZCwgMzIxIGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni1vbmV0aGluZy1vZWMtc2VyaWVzLmR0cwoKLS0g
CjIuNTIuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
