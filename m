Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7169E7718B
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Dec 2024 13:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OqKQYCZVDzrpiZFgivHv867UxBvSYLvn/QHEqwN1UrQ=; b=MsVjivNd4pJHQ9
	zfsR6YI7PN3bLGTpgsQG3K4jusvXDoshQu2L3pe4Pf9S+a+W4Ze/jFG14GjH69XzC9wSrOCfPa6yQ
	HIx/H7kibUtpF4EtkwE0KlXVmdB+fCbAtX2k3DQgEU6grp+7tVsZy260V3zgeX/9bQwPqgyf4jv7u
	sdRtA73OXvuojse3Y2S9SaSuilWNfSjipvsA21OqkzFVYYYvmUG5j+hjWqv3jlppDHPcSn4isNslM
	tv9kH8TMjQ4r/IZLyRzsu0lYsyEbyimyYNPXFg01bB5T9n4JY9Dq0O0KlrXvBYLtTvUBKtfmPXpop
	k6ysVYIhB2zk+o6FTAyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRAXS-00000000J82-3ehn;
	Fri, 27 Dec 2024 13:38:02 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tRAUC-00000000IlX-0CYt
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Dec 2024 13:34:41 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-2ef89dbd8eeso6565094a91.0
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Dec 2024 05:34:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1735306479; x=1735911279; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xuXjo3JGZawNXnVh34G3BVvcpo5eexvbjdWC4vxEYVU=;
        b=zFNAPsxQFefajzx1xU+3WM2DG+nt8T0aVJvD8zX4yYasQ3F102iNhy7TafpJg5hCjK
         iTlLLV+NW24V3y8syhBQjUwQ9SvbBFvSSW9dPeSS6Gn9twTAmcIZ0wvF8O5m9J9Swap0
         ZElINcd7WJLL1qhBvTFwChtdPGf4ndgccMaRzfNgkaexfODGTVf8yMgxJ80lyMkzMOOs
         wXEPq4l3wokhh7Mnxq9R60TgrYjVK6OYjpgQWF4/uziJa6VZA1jpPwJisUhaOZd6ZdkB
         JPf9aXXxFBylUeQtZ5EoU7y6yP61YmU+eHKpTf76w1MW2ftwd1FCSpFycFL38ciq9/sP
         XlzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735306479; x=1735911279;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xuXjo3JGZawNXnVh34G3BVvcpo5eexvbjdWC4vxEYVU=;
        b=RaCSiTc8fYNk5Y1DpiqwoWvSdmrpPfO9IDv7bD6HqYqTU3FmFB7jz/5OshPGjIoZrM
         1x/9ozLrrBfOTFDINeF7aG8+/B0DtDinr0rh+yPitAZXVtVvbwWbru8U5b2squCgXJfU
         P0qF8ruSyLEuOGUixVYqbc2itW704OZgv2xm8MYLP2NXuVpxVYV5bTdeoMJRgBep6Akg
         JrDF+Kms3WgS7U9z22sjOX/lBAz9E/mdx/fW+VGxkvDQJy46KJdIKB/7fmpmgPGkA5l3
         7UEFa3O10ndLpJ+gH9r012lTISIQbglscTinXicPBZViV1NJwM85Bo9V+neniLdcXEXW
         SKdQ==
X-Forwarded-Encrypted: i=1; AJvYcCUNLkj2GLubtFKZOf4gt9EXrk/TJStmTWrNcZgWXQOa2q3RlM8E+j2OLLaT43QB3u4sdQL8zvQYzEKXI1xf3g==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw/Kkf0g2dg/+aHoFBrVT9IDUJat0THv7NGmKWQfohv9uptQbJ1
	PL86drjlWT6XqYAm0ZNLllsE7xfKbMSTz4ahK3XwDHuq2KacjPTGF9GGugsczrw=
X-Gm-Gg: ASbGncuYHqjGV/RzluX0dKFzrQsSkdgJSg6KYwVnyue2ZdY5jCsODQVYjir9tck7pym
	0H/WGoYDdW+vqGs0et+XhC7wtrDv6YpP6qPyKmYLKFJp7/EKff6/ex6Wu/wQf7CBWxkaGU9og8O
	EXFo6AE5OM/tr9PS+fJLSunmyy/NFUVJYLZUQqXhJar9sBDY1/GfSkZHaWE5NOvRYC4+Xieee38
	o8HOa7gnPQLA2Ycf1zI8tTkO6unQdJHZVOpjpFAmcE0kHASgBmlGJbWM0siXT34iJ7BRng=
X-Google-Smtp-Source: AGHT+IFXkXBm1QSSKkDzkvGxOci8jtBovYoGFK+VfgBPfLEbz3spqaHBx+B/XcRXQ2Ybz2HyRRadqQ==
X-Received: by 2002:a17:90a:d646:b0:2ee:ab29:1a63 with SMTP id 98e67ed59e1d1-2f452dfccb7mr35641883a91.3.1735306479201;
        Fri, 27 Dec 2024 05:34:39 -0800 (PST)
Received: from tops-ThinkPad-E14-Gen-5.. ([103.217.239.66])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f4623dbfbfsm11808238a91.48.2024.12.27.05.34.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 05:34:38 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 4/4] arm64: dts: rockchip: Add Edgeble EAI CM6 Industrial IO for Automotive
Date: Fri, 27 Dec 2024 19:04:20 +0530
Message-Id: <20241227133420.169714-4-jagan@edgeble.ai>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241227133420.169714-1-jagan@edgeble.ai>
References: <20241227133420.169714-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_053440_102114_96E0D673 
X-CRM114-Status: GOOD (  12.82  )
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

RWRnZWJsZSBFZGdlIEFJIENNNkMgaXMgYW4gQXV0b21vdGl2ZSBFZGdlIEFJIEFjY2VsZXJhdG9y
IG1vZHVsZSBiYXNlZApvbiBSb2NrY2hpcCBSSzM1ODhNLCBvcGVyYXRpbmcgd2l0aMKgLTQwIMKw
QyB0byArODUgwrBDIHRlbXBhcmF0dXJlLgoKRWRnZWJsZSBFZGdlIEFJIENNNiBJbmR1c3RyaWFs
IElPIGJvYXJkIGlzIGFuIGV2YWx1YXRpb24gYm9hcmQgdGhhdAp3b3VsZCBjb21wYXRpYmxlIHdp
dGggRWRnZSBBSSBDTTYuCgpBZGQgRFRTIGZvciBFZGdlIEFJIENNNkMgd2l0aCBDTTYgSW5kdXN0
cmlhbCBJTyBib2FyZCBmb3IgQXV0b21vdGl2ZS4KClNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kg
PGphZ2FuQGVkZ2VibGUuYWk+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtl
ZmlsZSAgICAgICAgICAgICB8ICAxICsKIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtZWRn
ZWJsZS1uZXU2Yy1pby5kdHMgfCAxNSArKysrKysrKysrKysrKysKIDIgZmlsZXMgY2hhbmdlZCwg
MTYgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4LWVkZ2VibGUtbmV1NmMtaW8uZHRzCgpkaWZmIC0tZ2l0IGEvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvTWFrZWZpbGUKaW5kZXggODZjYzQxOGEyMjU1Li42NzAxYjI5NmYzZTAgMTAwNjQ0Ci0t
LSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUKKysrIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZQpAQCAtMTM2LDYgKzEzNiw3IEBAIGR0Yi0kKENP
TkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1ODgtY29vbHBpLWNtNS1nZW5ib29rLmR0YgogZHRi
LSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzU4OC1lZGdlYmxlLW5ldTZhLWlvLmR0Ygog
ZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzU4OC1lZGdlYmxlLW5ldTZhLXdpZmku
ZHRibwogZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzU4OC1lZGdlYmxlLW5ldTZi
LWlvLmR0YgorZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzU4OC1lZGdlYmxlLW5l
dTZjLWlvLmR0YgogZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzU4OC1ldmIxLXYx
MC5kdGIKIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1ODgtZnJpZW5kbHllbGVj
LWNtMzU4OC1uYXMuZHRiCiBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTg4LWph
Z3Vhci5kdGIKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4
LWVkZ2VibGUtbmV1NmMtaW8uZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
ODgtZWRnZWJsZS1uZXU2Yy1pby5kdHMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAw
MDAwMDAwLi4xZTQ4NDk5MWQxYTQKLS0tIC9kZXYvbnVsbAorKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU4OC1lZGdlYmxlLW5ldTZjLWlvLmR0cwpAQCAtMCwwICsxLDE1IEBA
CisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjArIE9SIE1JVCkKKy8qCisgKiBD
b3B5cmlnaHQgKGMpIDIwMjMgRWRnZWJsZSBBSSBUZWNobm9sb2dpZXMgUHZ0LiBMdGQuCisgKi8K
KworL2R0cy12MS87CisjaW5jbHVkZSAicmszNTg4bS5kdHNpIgorI2luY2x1ZGUgInJrMzU4OC1l
ZGdlYmxlLW5ldTZjLmR0c2kiCisjaW5jbHVkZSAicmszNTg4LWVkZ2VibGUtbmV1NmEtaW8uZHRz
aSIKKworLyB7CisJbW9kZWwgPSAiRWRnZWJsZSBOZXU2QyBJTyBCb2FyZCI7CisJY29tcGF0aWJs
ZSA9ICJlZGdlYmxlLG5ldXJhbC1jb21wdXRlLW1vZHVsZS02YS1pbyIsCisJCSAgICAgImVkZ2Vi
bGUsbmV1cmFsLWNvbXB1dGUtbW9kdWxlLTZjIiwgInJvY2tjaGlwLHJrMzU4OCI7Cit9OwotLSAK
Mi4zNC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
