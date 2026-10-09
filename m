Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 953CACA6012
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Oct 2026 01:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/1kqTRLyx7Bp7nFFq4cxc/MaYkAp9rgIRVEwbM3C4NY=; b=f3666nRvyy9apU
	IhP9Ky4WOHv2BlCGTk3pHplZMQ0Zr2mlmwfBjQIkz/CMTcj0VLjse4J+P+jGA5fYSMwAo6Q7rZhUX
	KBC/z/fxdEKuwfwcgIqfxmTOR1oYr/KgMcbydamu7c8tYlMwLzRkcKGWKIjzzie2T0ZILU+6jLpIZ
	ukT1P4t2ydLHJzaVd4wF5TxE34AIuKV0TiyPYULb6hS5ciD0/L9MFFu9Pi5lseonMMEWpflHgxJ8Y
	qSnR1C7IK2VXhcmzCWAGp9Osol7O+IHzj9f4xOhpu+TvCokYE6/a1Y+dJK1yREJV8xLavlj6smeVK
	UXN5e6FbNxcBzQOeLttQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEzhg-00000005FbV-0rVE;
	Fri, 09 Oct 2026 01:47:20 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEzhc-00000005Far-3BND
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Oct 2026 01:47:17 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-8917c712f32so1553275b3a.2
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 18:47:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791510436; x=1792115236; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=y5hYJjC9f5xrA2SeP8FzQjM1WwMyehhp0Rue0U/eEM4=;
        b=b0RtB4vdjRsHMAZoQYIi3qRf2ZW3op+EhqvGm8cOjX3Gm+BDHRqGKu9cywCBiA3cHv
         JKDrDb3lR0heqgNqh8KDNnFgH/f0j0PkjIPMe1UYHGRykhHeZRTEBCJ1vi8wCxeIrjyj
         QlH1jOzV5EQbSyuu+SW3hD8hVstavdfN74f2/2+/uk5axzQ0HDJujBRdHG7xZmUiz+gi
         uB0SjsfCIay+ywkvgVvBgRzPIR96FuQsBdmQ6ig4kljT74n8wdZgItLW+fjyUAPX2D9z
         XBHEJMx4MW+jtVPfKcQqcBt69exVe7il1PrTiNVoDYnw+xV63czKI/XJbAAVRhTXK9+V
         s63w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791510436; x=1792115236;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=y5hYJjC9f5xrA2SeP8FzQjM1WwMyehhp0Rue0U/eEM4=;
        b=pA9TLxgitz8eCmc4TXHKHcJ9gYbf3vclxP0p+Wz9A0XLbQo8OLpy7Pwq/vepIgdE1R
         50BOxsxkGit+Mx5Sxiya3Ah9ea0loTS2pqn4T55quLiFyeAkw+8pg2Q5DoEfhvu3nFU1
         NZeRQMKICQ1JiPgLVrr+xXCSuYgCkzEx/IMC1Tt3soUWawDCXiKRSBiSJnq1RHJ0Zjwn
         GPMeh0hh93aMPT8XDhVftwuYhZwu0D0pqUIuB3Ysp11cP/gv+b8BsSTSkJ7sdTBjNMY0
         yEoTA54CA4R3CCIpZRuJjrSV2POIucfB1ALeSOtNr7iaubWaTqNYaC2TrWniv9EMLD1j
         FjiQ==
X-Forwarded-Encrypted: i=1; AKwUvBw7lu2/LH7sFbifXch1qircWnCr1mxYikO/LKrnwXLB9jG9cp1upJu9iGiHNW6aHl8lvl96AA+2yx1RvZj+bg==@lists.infradead.org
X-Gm-Message-State: AFq9FYLpDrWA1PhB70Y7x7BRSUw+veFAMEiiKqYXSxpZzJRB6xfonwwy
	1Gwa+SpZwr3hA+KSoViHQgc1KwcpNqalHxOPp2UbyFszkWfFnk1657xi
X-Gm-Gg: AYBFou0kjsiyOSNEQ6zzM7GAmwuY5ZY7hcNxEUxHZ9jurTlug5P/UNQ4FnSRjEzb0Lx
	gM6YHHLn82PVXBUl3SDFlwVt8E6Q78Zx6UHEiBp/l3U+2TFT+DYADllt4gv49/YDvnZJizEjw6P
	lx/6e+vVKcsP8qgkGPTbPCpsoI3LbAfugmiFSblldxgzq3arYBCSTw3I2cw+zh3GXgwZZ4vKysn
	bneqLcM7Ql+NSClzGQXfY6xSDvBb1+rC3a7OgpqFmb+J3r18roS5vL3v46a+gvqK3zzBpr20EXm
	kDAWZoBCSaicdWkBAWorFltGZ4v9Iqbr7bK7dQRfyk2vDBrOFOMeg1NCF+5Xg8sg82+Q/W5xRhL
	5NHoF9Xxzso+iXUwvFun/rQsoCkgg9La1Q6Vvu5+Ve4RBtl3MaFxfwt2hnMPyoT5wFemCKdES97
	qIzMGV4DnonTHSxgAs1HQcT3wvz21onn0QJlaVtLsXXCdT+ouw8Rg3QQ1b+BdWgnIUZmO6aPme2
	VD+ZOc=
X-Received: by 2002:a05:6a00:1f06:b0:881:d48e:7138 with SMTP id d2e1a72fcca58-897c43df755mr329124b3a.4.1791510435663;
        Thu, 08 Oct 2026 18:47:15 -0700 (PDT)
Received: from arch.localdomain ([161.33.202.10])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-896c3dc6bf8sm260611b3a.34.2026.10.08.18.47.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 18:47:15 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: jerrysteve1101@gmail.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add dma-names to RK356x UART nodes
Date: Fri,  9 Oct 2026 09:47:08 +0800
Message-ID: <20261009014709.362001-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <20261008153620.238580-1-jerrysteve1101@gmail.com>
References: <20261008153620.238580-1-jerrysteve1101@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_184716_831993_30544CF5 
X-CRM114-Status: GOOD (  16.66  )
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

PiBUaGUgUkszNTZ4IFVBUlQgbm9kZXMgZGVmaW5lIGEgZG1hcyBwcm9wZXJ0eSBidXQgb21pdCB0
aGUgbWF0Y2hpbmcKPiBkbWEtbmFtZXMgcHJvcGVydHksIHNvIHRoZSA4MjUwIGRyaXZlciBmYWls
cyB0byByZXF1ZXN0IGEgRE1BIGNoYW5uZWwKPiBhbmQgZmFsbHMgYmFjayB0byBQSU8sIGxvZ2dp
bmc6Cj4gCj4gICBvZl9kbWFfcmVxdWVzdF9zbGF2ZV9jaGFubmVsOiBkbWEtbmFtZXMgcHJvcGVy
dHkgb2Ygbm9kZQo+ICAgJy9zZXJpYWxAZmU2NTAwMDAnIG1pc3Npbmcgb3IgZW1wdHkKPiAKPiBB
ZGQgdGhlIG1pc3NpbmcgZG1hLW5hbWVzID0gInR4IiwgInJ4IiB0byB1YXJ0MCB0aHJvdWdoIHVh
cnQ5LAo+IG1hdGNoaW5nIG90aGVyIFJvY2tjaGlwIFNvQ3Mgc3VjaCBhcyB0aGUgUkszMzA4Lgo+
IAoKSSByZWFsaXplIHRoYXQgRml4ZXM6IHRhZ3Mgc2hvdWxkIGhhdmUgYmVlbiBhZGRlZCBmb3Ig
dGhlIGR0c2ktcmVsYXRlZCBmaXhlcy4gCkFwb2xvZ2llcyBmb3IgdGhlIG9taXNzaW9uIOKAlCBJ
IHdpbGwgaW5jbHVkZSB0aGVtIGluIGEgdjIuCgo+IFNpZ25lZC1vZmYtYnk6IEp1biBZYW4gPGpl
cnJ5c3RldmUxMTAxQGdtYWlsLmNvbT4KPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1NngtYmFzZS5kdHNpIHwgMTAgKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwg
MTAgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU2eC1iYXNlLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU2eC1iYXNlLmR0c2kKPiBpbmRleCBhNTgzMjg5NWJkMzkuLjA5ODQ5M2MwNGVjYyAxMDA2NDQK
PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2eC1iYXNlLmR0c2kKPiAr
KysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2eC1iYXNlLmR0c2kKPiBAQCAt
NDQzLDYgKzQ0Myw3IEBAIHVhcnQwOiBzZXJpYWxAZmRkNTAwMDAgewo+ICAJCWNsb2NrcyA9IDwm
cG11Y3J1IFNDTEtfVUFSVDA+LCA8JnBtdWNydSBQQ0xLX1VBUlQwPjsKPiAgCQljbG9jay1uYW1l
cyA9ICJiYXVkY2xrIiwgImFwYl9wY2xrIjsKPiAgCQlkbWFzID0gPCZkbWFjMCAwPiwgPCZkbWFj
MCAxPjsKPiArCQlkbWEtbmFtZXMgPSAidHgiLCAicngiOwo+ICAJCXBpbmN0cmwtMCA9IDwmdWFy
dDBfeGZlcj47Cj4gIAkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiAgCQlyZWctaW8td2lk
dGggPSA8ND47Cj4gQEAgLTE0NDksNiArMTQ1MCw3IEBAIHVhcnQxOiBzZXJpYWxAZmU2NTAwMDAg
ewo+ICAJCWNsb2NrcyA9IDwmY3J1IFNDTEtfVUFSVDE+LCA8JmNydSBQQ0xLX1VBUlQxPjsKPiAg
CQljbG9jay1uYW1lcyA9ICJiYXVkY2xrIiwgImFwYl9wY2xrIjsKPiAgCQlkbWFzID0gPCZkbWFj
MCAyPiwgPCZkbWFjMCAzPjsKPiArCQlkbWEtbmFtZXMgPSAidHgiLCAicngiOwo+ICAJCXBpbmN0
cmwtMCA9IDwmdWFydDFtMF94ZmVyPjsKPiAgCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+
ICAJCXJlZy1pby13aWR0aCA9IDw0PjsKPiBAQCAtMTQ2Myw2ICsxNDY1LDcgQEAgdWFydDI6IHNl
cmlhbEBmZTY2MDAwMCB7Cj4gIAkJY2xvY2tzID0gPCZjcnUgU0NMS19VQVJUMj4sIDwmY3J1IFBD
TEtfVUFSVDI+Owo+ICAJCWNsb2NrLW5hbWVzID0gImJhdWRjbGsiLCAiYXBiX3BjbGsiOwo+ICAJ
CWRtYXMgPSA8JmRtYWMwIDQ+LCA8JmRtYWMwIDU+Owo+ICsJCWRtYS1uYW1lcyA9ICJ0eCIsICJy
eCI7Cj4gIAkJcGluY3RybC0wID0gPCZ1YXJ0Mm0wX3hmZXI+Owo+ICAJCXBpbmN0cmwtbmFtZXMg
PSAiZGVmYXVsdCI7Cj4gIAkJcmVnLWlvLXdpZHRoID0gPDQ+Owo+IEBAIC0xNDc3LDYgKzE0ODAs
NyBAQCB1YXJ0Mzogc2VyaWFsQGZlNjcwMDAwIHsKPiAgCQljbG9ja3MgPSA8JmNydSBTQ0xLX1VB
UlQzPiwgPCZjcnUgUENMS19VQVJUMz47Cj4gIAkJY2xvY2stbmFtZXMgPSAiYmF1ZGNsayIsICJh
cGJfcGNsayI7Cj4gIAkJZG1hcyA9IDwmZG1hYzAgNj4sIDwmZG1hYzAgNz47Cj4gKwkJZG1hLW5h
bWVzID0gInR4IiwgInJ4IjsKPiAgCQlwaW5jdHJsLTAgPSA8JnVhcnQzbTBfeGZlcj47Cj4gIAkJ
cGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiAgCQlyZWctaW8td2lkdGggPSA8ND47Cj4gQEAg
LTE0OTEsNiArMTQ5NSw3IEBAIHVhcnQ0OiBzZXJpYWxAZmU2ODAwMDAgewo+ICAJCWNsb2NrcyA9
IDwmY3J1IFNDTEtfVUFSVDQ+LCA8JmNydSBQQ0xLX1VBUlQ0PjsKPiAgCQljbG9jay1uYW1lcyA9
ICJiYXVkY2xrIiwgImFwYl9wY2xrIjsKPiAgCQlkbWFzID0gPCZkbWFjMCA4PiwgPCZkbWFjMCA5
PjsKPiArCQlkbWEtbmFtZXMgPSAidHgiLCAicngiOwo+ICAJCXBpbmN0cmwtMCA9IDwmdWFydDRt
MF94ZmVyPjsKPiAgCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICAJCXJlZy1pby13aWR0
aCA9IDw0PjsKPiBAQCAtMTUwNSw2ICsxNTEwLDcgQEAgdWFydDU6IHNlcmlhbEBmZTY5MDAwMCB7
Cj4gIAkJY2xvY2tzID0gPCZjcnUgU0NMS19VQVJUNT4sIDwmY3J1IFBDTEtfVUFSVDU+Owo+ICAJ
CWNsb2NrLW5hbWVzID0gImJhdWRjbGsiLCAiYXBiX3BjbGsiOwo+ICAJCWRtYXMgPSA8JmRtYWMw
IDEwPiwgPCZkbWFjMCAxMT47Cj4gKwkJZG1hLW5hbWVzID0gInR4IiwgInJ4IjsKPiAgCQlwaW5j
dHJsLTAgPSA8JnVhcnQ1bTBfeGZlcj47Cj4gIAkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsK
PiAgCQlyZWctaW8td2lkdGggPSA8ND47Cj4gQEAgLTE1MTksNiArMTUyNSw3IEBAIHVhcnQ2OiBz
ZXJpYWxAZmU2YTAwMDAgewo+ICAJCWNsb2NrcyA9IDwmY3J1IFNDTEtfVUFSVDY+LCA8JmNydSBQ
Q0xLX1VBUlQ2PjsKPiAgCQljbG9jay1uYW1lcyA9ICJiYXVkY2xrIiwgImFwYl9wY2xrIjsKPiAg
CQlkbWFzID0gPCZkbWFjMCAxMj4sIDwmZG1hYzAgMTM+Owo+ICsJCWRtYS1uYW1lcyA9ICJ0eCIs
ICJyeCI7Cj4gIAkJcGluY3RybC0wID0gPCZ1YXJ0Nm0wX3hmZXI+Owo+ICAJCXBpbmN0cmwtbmFt
ZXMgPSAiZGVmYXVsdCI7Cj4gIAkJcmVnLWlvLXdpZHRoID0gPDQ+Owo+IEBAIC0xNTMzLDYgKzE1
NDAsNyBAQCB1YXJ0Nzogc2VyaWFsQGZlNmIwMDAwIHsKPiAgCQljbG9ja3MgPSA8JmNydSBTQ0xL
X1VBUlQ3PiwgPCZjcnUgUENMS19VQVJUNz47Cj4gIAkJY2xvY2stbmFtZXMgPSAiYmF1ZGNsayIs
ICJhcGJfcGNsayI7Cj4gIAkJZG1hcyA9IDwmZG1hYzAgMTQ+LCA8JmRtYWMwIDE1PjsKPiArCQlk
bWEtbmFtZXMgPSAidHgiLCAicngiOwo+ICAJCXBpbmN0cmwtMCA9IDwmdWFydDdtMF94ZmVyPjsK
PiAgCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICAJCXJlZy1pby13aWR0aCA9IDw0PjsK
PiBAQCAtMTU0Nyw2ICsxNTU1LDcgQEAgdWFydDg6IHNlcmlhbEBmZTZjMDAwMCB7Cj4gIAkJY2xv
Y2tzID0gPCZjcnUgU0NMS19VQVJUOD4sIDwmY3J1IFBDTEtfVUFSVDg+Owo+ICAJCWNsb2NrLW5h
bWVzID0gImJhdWRjbGsiLCAiYXBiX3BjbGsiOwo+ICAJCWRtYXMgPSA8JmRtYWMwIDE2PiwgPCZk
bWFjMCAxNz47Cj4gKwkJZG1hLW5hbWVzID0gInR4IiwgInJ4IjsKPiAgCQlwaW5jdHJsLTAgPSA8
JnVhcnQ4bTBfeGZlcj47Cj4gIAkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiAgCQlyZWct
aW8td2lkdGggPSA8ND47Cj4gQEAgLTE1NjEsNiArMTU3MCw3IEBAIHVhcnQ5OiBzZXJpYWxAZmU2
ZDAwMDAgewo+ICAJCWNsb2NrcyA9IDwmY3J1IFNDTEtfVUFSVDk+LCA8JmNydSBQQ0xLX1VBUlQ5
PjsKPiAgCQljbG9jay1uYW1lcyA9ICJiYXVkY2xrIiwgImFwYl9wY2xrIjsKPiAgCQlkbWFzID0g
PCZkbWFjMCAxOD4sIDwmZG1hYzAgMTk+Owo+ICsJCWRtYS1uYW1lcyA9ICJ0eCIsICJyeCI7Cj4g
IAkJcGluY3RybC0wID0gPCZ1YXJ0OW0wX3hmZXI+Owo+ICAJCXBpbmN0cmwtbmFtZXMgPSAiZGVm
YXVsdCI7Cj4gIAkJcmVnLWlvLXdpZHRoID0gPDQ+Owo+IC0tIAo+IDIuNTYuMAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
