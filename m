Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1655D3B7D1
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Dec 2025 11:58:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+SkXTVWuXeydCjP0aXKNgxHknEUj/vd+8VQ31Z/262M=; b=QXH85eRhuH8eQt
	aKuAhCNwYzAc0umQwiJ4IrLuE6yNXbwMQ6VeqLovAvzL2M1FCPD2CwM5SZjTa64zCRAH6hBgiR615
	1urcx/sMPlRmQliO/WfnTeOXNmEi3BsHl1BA5tgg6IMXS0sBX6bg3tpw2ItLQsu7t/0Pz8m6OU5b4
	bjLSz2i8wTKTOtqmVSKC8/pKB/gh8NHyyIKBgFv39rJECDT+7Pa/rNf2jBYdeq1Xg2VImTwlMfRdb
	0j5QLZC1mHMfESokjyLbGpaYmby4eQhFtOj/NZ5DrtpoD3f8b4WBXSuN3TEG2hNtr0iUbG/W7am56
	/WaNZxqOLUuvg6ZGaX3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRqw5-0000000AtKU-044z;
	Sat, 06 Dec 2025 11:58:49 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRqw2-0000000AtK0-1vtx
	for linux-rockchip@lists.infradead.org;
	Sat, 06 Dec 2025 11:58:47 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-b736d883ac4so511338466b.2
        for <linux-rockchip@lists.infradead.org>; Sat, 06 Dec 2025 03:58:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765022324; x=1765627124; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=iiDwBzndnl96hSb/q/NLb44uNYBwPkjb4oD5H7teprs=;
        b=DtQY58ZZ45ZmRbJbc21s7H2LNLhTyeeRIuO+cdGdpLZHn71z9HxMh40whfrNoamLA0
         JtFrOud6utHvYnnjFLZWkiJ7OCV0oSWsr/TPmgn1ddBj/PCQCvdZ2lQ5aZJ1V5Wmwro9
         OpmRTiV1YT41qkU98PBXbPw03rYC/LgUVZ+6IxQF90iYE01YFGyDxyk9NQle9P78DiDD
         RuSU0dN3Rnks3707tLVLIkDCPqpkyGKR2oFFrHkzCAVb45K8Klt0XRztpEoSKoAV4Ylv
         Z/zNqFrbqrivEboSnkcd0Gd9ybCHaaE76yw6ip3bR9hbgL/g5wkVHjdM/zm/waqgcS5b
         0iGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765022324; x=1765627124;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iiDwBzndnl96hSb/q/NLb44uNYBwPkjb4oD5H7teprs=;
        b=GMkOAo6oN1rYnbLSNsJGfMnErlGQK8byPNq60T4/EIMRznJm/nbl8fUizohy4gg7l7
         VglNPhdlDcrzZNBe1Q8X3H93kuPm94JSNGRSdCUL2ZLzXp6H4HLPJwFhI96Pozif6KsB
         7+RThOViiCuU4b02NzdqBwpmte3sVmlWeGOtLScA4v/56DWpslZrLaUsmG7sWAcQHc18
         OdCQ/DbPjRBqxxkHkRGhKsXJElSa7XRbDo9opvStpreg4++Qmt7M8Yn/GxvmWWSG2DfW
         OXbe6vq2Rpfg81OfXiHix8G3a+aBrkY4OOEsglUO8rnnPyC6XlNt+O/ewDgy5QOUhldO
         8/Hw==
X-Forwarded-Encrypted: i=1; AJvYcCVvhW3BXsPNjpU2px2N9RLu0erRUY60+Vh933TOfyAJSzo2WxWs8BOP2SQnFDeKWJxLK495d1z1Qm6YhkdcPA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyUDrqvwEps1fRiBWf4JyUKXKXiki4OABwjTrD8VdPPEmbKvex9
	9IRtlW9Wh336j92FevSYDxWTpK0kIhBJ9vSYr00XDC2C5pv32ALbKgwo
X-Gm-Gg: ASbGnctdc1JkabO5iAJ5cGN9Ptyj1azyqnh+aLBg6ZSXZ/jNwronvFsFRvxJnV/DWOb
	j4YNq1gWLxGn12ZC2Atyn908/FBwf9VZrJXZmofp5iZTzCrK/t3wv5hhWTh/dbHHZNvJfdbnIbW
	KXk7xHU0HIskvvtoR9eD51lsMLEuAIksuoUjA6xbJIP9Fd2W6ILnlzLMhC36yivQu1rpM3P7mMi
	Xsl/h5Pcyg7nFrTvJ9EZuT1MXLGIVGxBQwr+QxAmxQ3H65CF9LRSMjtZUWqNL0bZH/Nz1f+dxr4
	sDUrsyei/NyLHPL7SjUFAT/HJMCjm/IjAI2urbeBfJ5J6dYoq8sCVzCz2F7+VaZEZQwLP6YiGyT
	LFs4A8FW4WlkqL86gmDJvmUaDDBBp9QZfsbYHLGJAZQz14V0VD8HZxWfxh9uIE//gjJJBrfZr1q
	23kR5p8OhvYkCLYVs=
X-Google-Smtp-Source: AGHT+IEutgnW3ziDYssPsy/rObFW3KXEtxwegCsIX+tFKBiL4raHPJrNmS+xnXzqQl+ZEEwHsCOK3Q==
X-Received: by 2002:a05:600c:354d:b0:46d:ba6d:65bb with SMTP id 5b1f17b1804b1-47939e4a8e3mr22685325e9.31.1765015323917;
        Sat, 06 Dec 2025 02:02:03 -0800 (PST)
Received: from toolbox.. ([87.200.95.144])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-479310c802bsm126055205e9.6.2025.12.06.02.02.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Dec 2025 02:02:03 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Detlev Casanova <detlev.casanova@collabora.com>,
	=?UTF-8?q?Olivier=20Cr=C3=AAte?= <olivier.crete@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Dmitry Osipenko <dmitry.osipenko@collabora.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] media: rockchip: rkvdec: add support for the VDPU346 variant
Date: Sat,  6 Dec 2025 10:01:57 +0000
Message-Id: <20251206100158.2041439-1-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251206_035846_548420_2B5A2DD4 
X-CRM114-Status: GOOD (  15.39  )
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

VGhpcyBzZXJpZXMgZGVwZW5kcyB1cG9uIERldGxldiBDYXNhbm92YSdzIGN1cnJlbnQgdjUgc2Vy
aWVzIGZvciBWRFBVMzgxIGFuZApWRFBVMzgzIHN1cHBvcnQgWzBdLiBQYXRjaCAxIGlzIG1hcmtl
ZCBETy1OT1QtTUVSR0UgYXMgaXQgY29udGFpbnMgZml4dXBzCmZvciBtaW5vciBuaXRzIHNwb3R0
ZWQgaW4gRGV0bGV2J3Mgc2VyaWVzLiBJJ3ZlIGZsYWdnZWQgdGhlbSBvbiBJUkMgYWZ0ZXIgdjIK
YnV0IHRoZSBtZXNzYWdlcyBtYXkgaGF2ZSBiZWVuIG1pc3NlZCBhcyB0aGV5IGFyZSBzdGlsbCBw
cmVzZW50IGluIHY1LgoKUGF0Y2hlcyAyLzMvNCBhZGQgc3VwcG9ydCBmb3IgdGhlIFZEUFUzNDYg
SVAgYmxvY2sgdXNlZCBmb3IgSDI2NCwgSEVWQyBhbmQKKGluIGZ1dHVyZSB3b3JrKSBWUDkgb24g
dGhlIFJLMzU2WCBib2FyZHMuIFZEUFUzNDYgYXBwZWFycyB0byBiZSBhIGNsb3NlCnJlbGF0aW9u
IHRvIFZEUFUzODEgdXNlZCB3aXRoIFJLMzU4OCwgZXhjZXB0IHdpdGggYSBzaW5nbGUgY29yZSwg
b3V0cHV0CmxpbWl0ZWQgdG8gNEssIGFuZCBtaW5vciBmZWF0dXJlIGRpZmZlcmVuY2VzLCBlLmcu
IEhFVkMgbGV2ZWwgNS4xIG9uIFZEUFUzNDYKdnMgNi4xIG9uIFZEUFUzODEuIFRvIGhhbmRsZSBk
aWZmZXJlbmNlcyB3ZSBkZWNsYXJlIGEgbmV3IGNvbXBhdGlibGUuCgpUaGUgZGV2aWNlLXRyZWUg
Y2hhbmdlcyBhcmUgZGVyaXZlZCBmcm9tIHByaW9yLWFydCBpbiBEZXRsZXYncyBwYXRjaGVzIGZv
cgpSSzM1NzYgYW5kIFJLMzU4OCwgdGhlIHZlbmRvciBrZXJuZWwgWzFdLCBhbmQgc29tZSBlYXJs
aWVyIHBhdGNoIGF0dGVtcHRzCmZyb20gUGlvdHIgT25pc3pjenVrIGFuZCBEaWVkZXJpayBkZSBI
YWFzLgoKVGhlIHJlZ2lzdGVyIGRpZmZlcmVuY2VzIGJldHdlZW4gVkRQVTM0NiBhbmQgVkRQVTM4
MSBhcHBlYXIgdG8gYmUgbWluaW1hbCBzbwp3ZSBjdXJyZW50bHkgYW5kIGludGVudGlvbmFsbHkg
cmV1c2UgdGhlIFZEUFUzODEgaDI2NCwgaGV2YywgYW5kIHJlZ3MgZmlsZXMKdG8gYXZvaWQgZHVw
bGljYXRpbmcgY29kZS4gSWYgZnVydGhlciByZWdpc3RlciBhbmFseXNpcyByZXF1aXJlcyBzZXBh
cmF0ZQpmaWxlcyBmb3IgVkRQVTM0NiB0aGUgcmVmYWN0b3JpbmcgdG8gRGV0bGV2J3MgZHJpdmVy
cyBpcyBhIGxpdHRsZSBiZXlvbmQgbXkKY3VycmVudCBiZWdpbm5lciBsZXZlbCBjIHNraWxscy4g
QXMgdGhlIG92ZXJhbGwgbWlub3IgY2hhbmdlc2V0IHRvIFZEUFUzODEKaXQgd291bGQgYmUgYXdl
c29tZSBpZiB0aGlzIHNlcmllcyBjb3VsZCBiZSBhYnNvcmJlZC4gSSBoYWQgc29tZSBkaXNjdXNz
aW9uCndpdGggT2xpdmllciBDcsOqdGUgZHVyaW5nIFZpZGVvTGFuIERldiBEYXlzIGxhc3QgbW9u
dGggdGhhdCBzdWdnZXN0ZWQgdGhpcwptaWdodCBiZSBwb3NzaWJsZT8gLSBoZW5jZSBzZW5kaW5n
IG5vdy4gSWYgbm90LCBJJ2xsIHdhaXQgdW50aWwgRGV0bGV2J3MKc2VyaWVzIGhhcyBiZWVuIG1l
cmdlZCBiZWZvcmUgc2VuZGluZyBhIG5leHQgaXRlcmF0aW9uIG9mIHRoZXNlIHBhdGNoZXMuCgpU
ZXN0aW5nIHdpdGggSmVsbHlmaXNoIGZpbGVzIG9mIHZhcnlpbmcgYml0cmF0ZXMgc2hvd3MgdGhh
dCBSSzM1Nlggc3RhcnRzCnRvIGV4cGVyaWVuY2UgamVya3kgcGxheWJhY2sgYWJvdmUgMTBtYnBz
LCB3aGljaCBzZWVtcyByYXRoZXIgbG93IGNvbXBhcmVkCnRvIFJLMzU4OCB3aGljaCBjYW4gcGxh
eSAzMDBtYnBzIG1lZGlhIHdpdGhvdXQgaXNzdWVzLiBUaGUgdmVuZG9yIGtlcm5lbApkb2N1bWVu
dHMgJ2FkdmFuY2VkJyBhc3NpZ25lZC1jbG9jay1yYXRlcyBidXQgaW5jcmVhc2luZyB0aGVtIGRv
ZXMgbm90IGhhdmUKYW55IG9idmlvdXMgaW1wYWN0IHNvIHRoZSBkaWZmZXJlbmNlIGxvb2tzIHRv
IGJlIHNvbWV0aGluZyBkZWVwZXIuIE5COiBUaGUKc2FtZSBpcyBhbHNvIHNlZW4gd2l0aCBEZXRs
ZXYncyBwYXRjaGVzIGZvciBSSzM1NzYgKG1heCAxNW1wYnMpIHNvIGZ1cnRoZXIKb3IgZm9sbG93
LXVwIHdvcmsgaXMgbGlrZWx5IHJlcXVpcmVkLiBEZXNwaXRlIHRoZSBhcHBhcmVudCBsaW1pdGF0
aW9uIHJlYWwtCndvcmxkIG1lZGlhIGZyb20gbXkgY29sbGVjdGlvbiBwbGF5cyB3ZWxsLgoKWzBd
IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1yb2NrY2hpcC9saXN0
Lz9zZXJpZXM9MTAxNTIyMQpbMV0gaHR0cHM6Ly9naXRodWIuY29tL3JvY2tjaGlwLWxpbnV4L2tl
cm5lbC9ibG9iL2RldmVsb3AtNi42L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTZ4
LmR0c2kjTDE1MzkKCkNocmlzdGlhbiBIZXdpdHQgKDQpOgogIG1lZGlhOiBya3ZkZWM6IG1pbm9y
IGZpeGVzIGZvciBjdXJyZW50IERFVExFViBwYXRjaGVzCiAgbWVkaWE6IGR0LWJpbmRpbmdzOiBy
b2NrY2hpcDogQWRkIFJLMzU2OCBWaWRlbyBEZWNvZGVyIGJpbmRpbmdzCiAgbWVkaWE6IHJrdmRl
YzogQWRkIHN1cHBvcnQgZm9yIHRoZSBWRFBVMzQ2IHZhcmlhbnQKICBhcm02NDogZHRzOiByb2Nr
Y2hpcDogQWRkIHRoZSB2ZHB1MzQ2IFZpZGVvIERlY29kZXJzIG9uIFJLMzU2WAoKIC4uLi9iaW5k
aW5ncy9tZWRpYS9yb2NrY2hpcCx2ZGVjLnlhbWwgICAgICAgICB8ICAgMiArCiBhcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2eC1iYXNlLmR0c2kgfCAgNDkgKysrKysrKysKIC4uLi9y
b2NrY2hpcC9ya3ZkZWMvcmt2ZGVjLXZkcHUzODEtcmVncy5oICAgICB8ICAgNCArLQogLi4uL3Jv
Y2tjaGlwL3JrdmRlYy9ya3ZkZWMtdmRwdTM4My1oZXZjLmMgICAgIHwgICA2ICstCiAuLi4vbWVk
aWEvcGxhdGZvcm0vcm9ja2NoaXAvcmt2ZGVjL3JrdmRlYy5jICAgfCAxMTAgKysrKysrKysrKysr
KysrKysrCiA1IGZpbGVzIGNoYW5nZWQsIDE2NiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygt
KQoKLS0gCjIuMzQuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
