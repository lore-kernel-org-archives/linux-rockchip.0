Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C48B9C369AB
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Apr 2025 02:39:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Tg6uFKQJavmj4pM7WAabkBuaoCqozkTpffJ78vDiYTg=; b=lr7blcg7A///yK
	pLipnMwNPrGjT45fAc7b30tWvMozXzh+Hwk6NdBpDU1p0ZJTLPQEvAwAreoTFBK+BrRHGe/pY/x5j
	3qn+cdkxu42J9cyLr4wlr2QRWhukMCfZc8hrudOxJp/U+nqsV66W6blpqujWPhvuBEeVmCQCLm03A
	ml9AKTYsBGSNRSF5+Qfnj9ln2P9aM8DGaEPc7DAqTCST/dgmjGcOYw2RIB2o3sNxRaYcPEs+ByC+B
	uryV4qqT+u0jBxLQPDFUXOc/ZC1/P17GMsf+AHJbDaLn6WsvpvvZeNk//x0QJW1+cr7ZllLsiZ1JD
	BrWqFrSub8eAREfgGdKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5y6w-00000000izc-1X1w;
	Sat, 19 Apr 2025 02:39:18 +0000
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5y54-00000000isi-0JWx;
	Sat, 19 Apr 2025 02:37:23 +0000
Received: by mail-qk1-x736.google.com with SMTP id af79cd13be357-7c5c815f8efso211791385a.2;
        Fri, 18 Apr 2025 19:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745030240; x=1745635040; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=z5xMW6JQzRFC3RypkMpl7HC+Ok1HS+DBoXUN4t3IzPg=;
        b=jcQSNzOq5NL67DyGwux9NWN+Q3OQ/tInykB+C1e+30dkJScYSIiE6+PlIbWNmrHvz6
         A9wC9tjIXk9+I3esrEQno5XPqnFopIVA97yAG+cHQpDs9qBgFAW9szCGGkMXu8vYITTt
         YJmYxD+2kX4OOTVtfCpTZFTEwNe+dqbrmHs+s4rzPmTyxQyEnGsQqBcFLxpqbhwUjaKF
         UVLokVzA4UJrolD8g+bBupXF7ST1Vecu8IvJslTejxKl0giS6fl9xFhige0H3Wfrdc1D
         BlNPPZ8FTmapxBsp7jGhTcmiH1xhWoKz1+Fi+2ZLgJdUnBZVsiBQOX0MGC6txPDuOmW0
         rP7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745030240; x=1745635040;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z5xMW6JQzRFC3RypkMpl7HC+Ok1HS+DBoXUN4t3IzPg=;
        b=HVu7gO9+IzNaXRnpkOcQ1P0Xop5DLmoNABTFfor2phnRCY4ya6i2hU2W/24wqWrF7m
         ztwfRMrNqnNksNVaz1UVFuDYFmh0vOlrfM1tcRKWBoE282a0DfEhxLgfkURozVUaKpKa
         EgkE4/EVcgEigq6SUNDVz1F4OTq0F3IDaWVwPfcRheWNrqtgGtq/FJDzLuffWqJmbggT
         Ohq8SG/N+em1RcB9/2U36Nnzs3gQ6HbiVMH+2ffVc5MTNiQjeOle02YQkgZAH50+jAAE
         /UWZj2X3o+3ppE2XU2692aSKSIhhDIRRR9wLG7HM4l4N+jx3/hYWzQx50ozqe27Ycl7O
         5utA==
X-Forwarded-Encrypted: i=1; AJvYcCW3EaU4C6lud6NFTNul5qFztaydhHDnnAtOSaStkyHttCj4+leiFhypnP8BV4s54DTh70flYcpVtGXcul40IIw=@lists.infradead.org, AJvYcCWieN/Y4OsmRWQkBYr6SfT5FbDCMwmkrzby0vo6nzRCuJafAtMBYzB5OvvhQ+RyVWdOmwNQzlNNwq4CQaOZdMHT@lists.infradead.org
X-Gm-Message-State: AOJu0YzRemWoEcBroIJH+fOAi7SzvhQaKCvCvOJkZB7sQqYlhok3R9Xk
	zXfZGqlZQzYrcLZS6kRzsGbITxbrrwbgrFPx6s7nscEj0Opzyp0B
X-Gm-Gg: ASbGncu7ztT15zPgRiKjcxzRbj/B3UIBBz3Meilkf2DmBkF6EY1V5b3OQS/63FQiVwI
	WoUqpvNdFFppANeblN2CTlVjzud2d8LWkIwwQrkBm2pnk3q2OmfEiXgCu2kvGYBJr0vNhXsRv4L
	sPr6YV67SEUuqCU2alFhabECpX2mNfkbckLV7giIGLikE6mUjE0HzpQ5uv93a0vEwRpZqmnuklj
	2RMvk5JL4P3AFzCCUAZWpL9Xe8P4CK6MxynA9g50RKJ3GWkjmcXuxDlbk4uWMFouwaHVCLtjy3s
	WtbTDWYm75fQ/1kbv03ej/UVM1Z+PkhsZu00dDTELCzZvNZ/XRvj
X-Google-Smtp-Source: AGHT+IHye/ATWWxQYKG94Z32CtV6NgziY9q4KsfM+OTqg+TdECswRmqN026PmdK91mfchx0mVjT56Q==
X-Received: by 2002:a05:620a:4413:b0:7c5:5e9f:eb2d with SMTP id af79cd13be357-7c92803945fmr784446185a.44.1745030240096;
        Fri, 18 Apr 2025 19:37:20 -0700 (PDT)
Received: from localhost.localdomain ([216.237.233.165])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7c925b4ddb2sm169612985a.88.2025.04.18.19.37.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Apr 2025 19:37:19 -0700 (PDT)
From: John Clark <inindev@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Marcin Juszkiewicz <mjuszkiewicz@redhat.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	John Clark <inindev@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: rk3588-nanopc-t6: fix usb-c port functionality
Date: Fri, 18 Apr 2025 22:37:15 -0400
Message-Id: <20250419023715.16811-1-inindev@gmail.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250418_193722_119041_7B0439C1 
X-CRM114-Status: GOOD (  15.03  )
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

VGhlIFVTQi1DIHBvcnQgb24gdGhlIE5hbm9QQy1UNiB3YXMgbm90IHByb3ZpZGluZyBWQlVTICh2
YnVzNXYwX3R5cGVjCnJlZ3VsYXRvciBkaXNhYmxlZCwgZ3Bpby01OCBvdXQgbG8pIGR1ZSB0byBt
aXNjb25maWd1cmF0aW9uLiBUaGUKb3JpZ2luYWwgc2V0dXAgd2l0aCByZWd1bGF0b3ItYWx3YXlz
LW9uIGFuZCByZWd1bGF0b3ItYm9vdC1vbiBmb3JjZWQKdGhlIHBvcnQgb24sIG1hc2tpbmcgdGhl
IGlzc3VlLCBidXQgcmVtb3ZpbmcgdGhlc2UgcHJvcGVydGllcyByZXZlYWxlZAp0aGF0IHRoZSBm
dXNiMzAyIGRyaXZlciB3YXMgbm90IGVuYWJsaW5nIHRoZSByZWd1bGF0b3IgZHluYW1pY2FsbHku
CgpDaGFuZ2VzOgotIFJlbW92ZWQgcmVndWxhdG9yLWFsd2F5cy1vbiBhbmQgcmVndWxhdG9yLWJv
b3Qtb24gZnJvbSB2YnVzNXYwX3R5cGVjCiAgYW5kIHZidXM1djBfdXNiIHRvIGFsbG93IGRyaXZl
ciBjb250cm9sLgotIENoYW5nZWQgcG93ZXItcm9sZSBmcm9tICJzb3VyY2UiIHRvICJkdWFsIiBp
biB0aGUgdXNiLWMtY29ubmVjdG9yCiAgdG8gc3VwcG9ydCBPVEcgZnVuY3Rpb25hbGl0eS4KLSBB
ZGQgcGQtcmV2aXNpb24gPSAvYml0cy8gOCA8MHgyIDB4MCAweDEgMHgyPjsgdG8gdGhlIEZVU0Iz
MDJNUFggbm9kZQogIHRvIHNwZWNpZnkgVVNCIFBvd2VyIERlbGl2ZXJ5IChQRCkgUmV2aXNpb24g
Mi4wLCBWZXJzaW9uIDEuMiwKICBlbnN1cmluZyB0aGUgZHJpdmVyIGNvcnJlY3RseSBhZHZlcnRp
c2VzIFBEIGNhcGFiaWxpdGllcyBhbmQKICBuZWdvdGlhdGVzIHBvd2VyIHJvbGVzIChzb3VyY2Uv
c2luaykgcGVyIHRoZSBGVVNCMzAyTVBY4oCZcyBzdXBwb3J0ZWQKICBQRCBwcm90b2NvbC4KLSBB
ZGRlZCBvcC1zaW5rLW1pY3Jvd2F0dCBhbmQgc2luay1wZG9zIGZvciBwcm9wZXIgc2luayBtb2Rl
CiAgY29uZmlndXJhdGlvbiAoMXcgbWluLCAxNXcgbWF4KS4KLSBBZGQgdHlwZWMtcG93ZXItb3Bt
b2RlID0gIjMuMEEiOyB0byBlbmFibGUgMy4wQSAoMTVXKSBmYWxsYmFjayBmb3IKICBub24tUEQg
VVNCLUMgZGV2aWNlcyB3aXRoIHRoZSBGVVNCMzAyTVBYLgotIFNldCB0cnktcG93ZXItcm9sZSB0
byAic291cmNlIiB0byBwcmlvcml0aXplIFZCVVMgZW5hYmxlbWVudC4KLSBBZGp1c3RlZCB1c2Jf
aG9zdDBfeGhjaSBkcl9tb2RlIGZyb20gImhvc3QiIHRvICJvdGciIGFuZCBhZGRlZAogIHVzYi1y
b2xlLXN3aXRjaCBmb3IgZHVhbC1yb2xlIHN1cHBvcnQuCgpUZXN0aW5nOgotIFZlcmlmaWVkIFZC
VVMgKDVWKSBkZWxpdmVyeSB0byBhIHNpbmsgZGV2aWNlIChVU0IgdGh1bWIgZHJpdmUpLgotIENv
bmZpcm1lZCBVU0IgaG9zdCBtb2RlIHdpdGggbHN1c2IgZGV0ZWN0aW5nIGNvbm5lY3RlZCBkZXZp
Y2VzLgotIFZhbGlkYXRlZCBVU0IgZGV2aWNlIG1vZGUgd2l0aCBhZGIgZGV2aWNlcyB3aGVuIGNv
bm5lY3RlZCB0byBhIFBDLgotIFRlc3RlZCBkdWFsLXJvbGUgKE9URykgZnVuY3Rpb25hbGl0eSB3
aXRoIHRyeS1wb3dlci1yb2xlIHNldCB0bwogICJzb3VyY2UiIGFuZCAic2luayI7ICJzb3VyY2Ui
IHByaW9yaXRpemVzIGZhc3RlciBWQlVTIGFjdGl2YXRpb24uCi0gVmFsaWRhdGVkIGZ1bmN0aW9u
YWxpdHkgd2l0aCBhIG1vYmlsZSBkZXZpY2UsIGluY2x1ZGluZyBVU0IgUG93ZXIKICBEZWxpdmVy
eSwgZmlsZSB0cmFuc2ZlciwgVVNCIHRldGhlcmluZywgTUlESSwgYW5kIGltYWdlIHRyYW5zZmVy
LgotIFRlc3RlZCBVU0ItQyBFdGhlcm5ldCBhZGFwdGVyIGNvbXBhdGliaWxpdHksIGVuc3VyaW5n
IHByb3BlcgogIG9wZXJhdGlvbiBpbiBob3N0IG1vZGUuCi0gVGVzdGVkIFVTQi1DIGh1YiBjb21w
YXRpYmlsaXR5LCBlbnN1cmluZyBwcm9wZXIgb3BlcmF0aW9uIGluIGhvc3QgbW9kZS4KClNpZ25l
ZC1vZmYtYnk6IEpvaG4gQ2xhcmsgPGluaW5kZXZAZ21haWwuY29tPgotLS0KIC4uLi9ib290L2R0
cy9yb2NrY2hpcC9yazM1ODgtbmFub3BjLXQ2LmR0c2kgICB8IDIxICsrKysrKysrKystLS0tLS0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1uYW5vcGMtdDYu
ZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW5hbm9wYy10Ni5kdHNp
CmluZGV4IGNlY2ZiNzg4YmY5ZS4uOGYyYmQzMDc4NmQ5IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1uYW5vcGMtdDYuZHRzaQorKysgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1uYW5vcGMtdDYuZHRzaQpAQCAtMTc0LDggKzE3NCw2
IEBAIHZidXM1djBfdHlwZWM6IHJlZ3VsYXRvci12YnVzNXYwLXR5cGVjIHsKIAkJZ3BpbyA9IDwm
Z3BpbzEgUktfUEQyIEdQSU9fQUNUSVZFX0hJR0g+OwogCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1
bHQiOwogCQlwaW5jdHJsLTAgPSA8JnR5cGVjNXZfcHdyZW4+OwotCQlyZWd1bGF0b3ItYWx3YXlz
LW9uOwotCQlyZWd1bGF0b3ItYm9vdC1vbjsKIAkJcmVndWxhdG9yLW5hbWUgPSAidmJ1czV2MF90
eXBlYyI7CiAJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDUwMDAwMDA+OwogCQlyZWd1bGF0
b3ItbWF4LW1pY3Jvdm9sdCA9IDw1MDAwMDAwPjsKQEAgLTE4OCw4ICsxODYsNiBAQCB2YnVzNXYw
X3VzYjogcmVndWxhdG9yLXZidXM1djAtdXNiIHsKIAkJZ3BpbyA9IDwmZ3BpbzQgUktfUEIwIEdQ
SU9fQUNUSVZFX0hJR0g+OwogCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwogCQlwaW5jdHJs
LTAgPSA8JnVzYjV2X3B3cmVuPjsKLQkJcmVndWxhdG9yLWFsd2F5cy1vbjsKLQkJcmVndWxhdG9y
LWJvb3Qtb247CiAJCXJlZ3VsYXRvci1uYW1lID0gInZidXM1djBfdXNiIjsKIAkJcmVndWxhdG9y
LW1pbi1taWNyb3ZvbHQgPSA8NTAwMDAwMD47CiAJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0g
PDUwMDAwMDA+OwpAQCAtNDY1LDI0ICs0NjEsMzAgQEAgcmVndWxhdG9yLXN0YXRlLW1lbSB7CiB9
OwogCiAmaTJjNiB7Ci0JY2xvY2stZnJlcXVlbmN5ID0gPDIwMDAwMD47CiAJc3RhdHVzID0gIm9r
YXkiOwogCi0JZnVzYjMwMjogdHlwZWMtcG9ydGNAMjIgeworCXVzYmMwOiB1c2ItdHlwZWNAMjIg
ewogCQljb21wYXRpYmxlID0gImZjcyxmdXNiMzAyIjsKIAkJcmVnID0gPDB4MjI+OwogCQlpbnRl
cnJ1cHQtcGFyZW50ID0gPCZncGlvMD47CiAJCWludGVycnVwdHMgPSA8UktfUEQzIElSUV9UWVBF
X0xFVkVMX0xPVz47Ci0JCXBpbmN0cmwtMCA9IDwmdXNiYzBfaW50PjsKIAkJcGluY3RybC1uYW1l
cyA9ICJkZWZhdWx0IjsKKwkJcGluY3RybC0wID0gPCZ1c2JjMF9pbnQ+OwogCQl2YnVzLXN1cHBs
eSA9IDwmdmJ1czV2MF90eXBlYz47CisJCXN0YXR1cyA9ICJva2F5IjsKIAogCQljb25uZWN0b3Ig
ewogCQkJY29tcGF0aWJsZSA9ICJ1c2ItYy1jb25uZWN0b3IiOwogCQkJZGF0YS1yb2xlID0gImR1
YWwiOwogCQkJbGFiZWwgPSAiVVNCLUMiOwotCQkJcG93ZXItcm9sZSA9ICJzb3VyY2UiOworCQkJ
LyogZnVzYjMwMiBzdXBwb3J0cyBQRCBSZXYgMi4wIFZlciAxLjIgKi8KKwkJCXBkLXJldmlzaW9u
ID0gL2JpdHMvIDggPDB4MiAweDAgMHgxIDB4Mj47CisJCQlwb3dlci1yb2xlID0gImR1YWwiOwor
CQkJb3Atc2luay1taWNyb3dhdHQgPSA8MTAwMDAwMD47CisJCQlzaW5rLXBkb3MgPSA8UERPX0ZJ
WEVEKDUwMDAsIDMwMDAsIFBET19GSVhFRF9VU0JfQ09NTSk+OwogCQkJc291cmNlLXBkb3MgPSA8
UERPX0ZJWEVEKDUwMDAsIDIwMDAsIFBET19GSVhFRF9VU0JfQ09NTSk+OworCQkJdHJ5LXBvd2Vy
LXJvbGUgPSAic291cmNlIjsKKwkJCXR5cGVjLXBvd2VyLW9wbW9kZSA9ICIzLjBBIjsKIAogCQkJ
cG9ydHMgewogCQkJCSNhZGRyZXNzLWNlbGxzID0gPDE+OwpAQCAtMTEzNSw5ICsxMTM3LDggQEAg
JnVzYl9ob3N0MF9vaGNpIHsKIH07CiAKICZ1c2JfaG9zdDBfeGhjaSB7Ci0JZHJfbW9kZSA9ICJo
b3N0IjsKLQlzdGF0dXMgPSAib2theSI7CiAJdXNiLXJvbGUtc3dpdGNoOworCXN0YXR1cyA9ICJv
a2F5IjsKIAogCXBvcnQgewogCQl1c2JfaG9zdDBfeGhjaV9kcmRfc3c6IGVuZHBvaW50IHsKLS0g
CjIuMzkuNQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
