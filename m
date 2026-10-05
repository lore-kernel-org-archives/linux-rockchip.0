Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DE54CA5FF5
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2026 22:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VJtE8KYojvetMrVmgwMMu+g7iQoagEZINU7avt8MOy4=; b=x22NV608Ija8UH
	EI/9LE23VgScDYQ1j8REA5Y0zAcFVyYXFBqeB2tOJgYMlKLxRBgoO+LCP0rdYKi/KtNBJ2mFX3XE+
	t3pdn6hm2TivPzzbj+dwWEmZAzhNMrVMyX94T6zb/3zJrdeTJPSCOK09fvMYBuGes0pSuMo+Cog8F
	rGD9biXGv4RTz/DPBEOXE0DG8YJ2pfzBX5nRpPOQuTBwvLXeAgQVrP82pl0vI2AhipXaMjpy5sPfm
	9CaLeSykPtpopoyqgoPXAIiZ/Nj+rvJ4WRZbyFjg4EHEx3754NpqclOVWdKTwvBEimjIiaig0yrLT
	fyCfuPm6ZZzf2YeXXOMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDrCh-0000000HG3R-2yEO;
	Mon, 05 Oct 2026 22:30:39 +0000
Received: from mail-pj2-x07.google.com ([2607:f8b0:4864:39::7])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDrCc-0000000HG1p-2Kuw
	for linux-rockchip@lists.infradead.org;
	Mon, 05 Oct 2026 22:30:37 +0000
Received: by mail-pj2-x07.google.com with SMTP id 98e67ed59e1d1-3a7adbf1b3fso410730a91.0
        for <linux-rockchip@lists.infradead.org>; Mon, 05 Oct 2026 15:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791239434; x=1791844234; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=7dyXKafz8ImkayNO8unQ7aikTx/yLC8/flyV0cIQnH0=;
        b=MFYKuNNkI7EEbFhfif8MsOTUno035sztVjqfKeppGFON+eqBKMx/cSfZCdQrozGdCE
         dq7wA2oin+T0z33dmqfn2Znu1h7qJA9H98ApuqVKclIRUX+JfoHA1HbkD+Dc3B09cj9X
         yXM51m3cg97A8KXnfQbjni31P/vdQ5z/p5mixJvIvjcHfEfSuYbAYTky3xj7SFlntptg
         iXF3tLr9f/MQhF2FpU3VDLZTROnxJGhWqd2r1Pe1GeN57NAlliubN6DSJF8SfuOaAB/m
         PqyeDqGZUEh8IqvoOZ7HWfNQc3mSmwO1gPZ9iGkqxpufAxfwgf0OLP2BUIplDxMID3uG
         cIhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791239434; x=1791844234;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=7dyXKafz8ImkayNO8unQ7aikTx/yLC8/flyV0cIQnH0=;
        b=t0Q1MNQZ/bbUFsbIyVEWqFdyGA5iGRwuHGnaB5O4OvO6jJjTLmyeQ/65+vT0Mhp4la
         +8TEP+4bzvvt2pcGluYYtibME2LGr3hKulJpSamhSZl4AmaIkAdIHaivI28GvxAbRzuB
         4xgS8uO38OCObvO9M8WynjT2oNswJwjS5RkySNXqcn/iXCvODT2LblciPZhkXcIiZR1T
         Vklo2Maz+AV2Vjlg49ifwYCetpqAK3+lIZnc6ZrC/sHs4G8LfCiGGGv5X7Nc6nYpwOAe
         YDEt26ZnsVfLEXjN6lIKaaWH3BkT64F2hTblODfbwpRclpQ/De5X6ostJxJhjLPSnt12
         46Zw==
X-Forwarded-Encrypted: i=1; AKwUvBwpVqMMCjr6JtKFDD84zALD2g+fCUP+ap3GbUsvcH4jh8lz1fV9EjEuN7AgD+UtVWafP1XCxN/kdhvEax7CRQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYJ9BGxY6gYRWQw32R/+2m1ciUPrq6ujy2lDobqcVGtiCAsoaA4N
	oKWtOy6VG+Oh9FAiBSUHEVGgHksQn9aqFdSyfjDUK7h224f8iSvWc/uP
X-Gm-Gg: AYBFou2l3WDhVf4sk47r4b0ZbQtmm29q4vLdHYoK0sgLh73uyNVJKNQDTwiSZbmcSQl
	ETmYVcIDwjqk21tUYR4PRRVTHuXPO8u9w/48+wwS0ISTSw+33Hafcx8gMTMdlRuiyrX4/mwVTZE
	r9a+ieHJivMxqt4pyaoSsKLJpwopHyOGpK3DhZIC5PSN3JqIDEL/eT5pI2RIwsub8JoCrIKgNnx
	K3XpxxtsFDT3YKXTZhjm9gEb22NcoHjf6tBN4uxosj67pdGAzUIbqzg5HlPTmD0RDyv1HiNduoO
	+TWnFqtQPkpXqTqV4oAZuCuyWuP2Uyki0lqwGZOiQnNl0jsOXQgyjmUcKS2rFaRegkEzJb2kfCQ
	TP/htnqhz91OeL9V2mftZn3C6kPMXbliX9U/hs28535MzlWkXI/5ibik4JYjNYwi+TmNIS5320X
	GBzlAFN9VowAATICz0y3n/DfRWqhGw9Wx2+zO0HQbx25eUSGqMBBHTCi9F/dkutjEEF0BQ
X-Received: by 2002:a17:90b:134f:b0:3a0:ca03:3e1f with SMTP id 98e67ed59e1d1-3a7872b2fdcmr6955612a91.32.1791239433477;
        Mon, 05 Oct 2026 15:30:33 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e5a5f05321sm13203705ad.78.2026.10.05.15.30.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 15:30:32 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	David Wu <david.wu@rock-chips.com>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH net-next v10 0/6] net: pcs: add basic support for RK3568 XPCS
Date: Tue,  6 Oct 2026 06:30:02 +0800
Message-ID: <20261005223011.1124347-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_153036_549091_52D6FD3D 
X-CRM114-Status: GOOD (  16.75  )
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

VGhpcyBzZXJpZXMgYWRkcyBwcm9wZXIgU0dNSUkgc3VwcG9ydCBmb3IgdGhlIFJvY2tjaGlwIFJL
MzU2OCBTb0MKdXNpbmcgdGhlIGludGVncmF0ZWQgU3lub3BzeXMgRGVzaWduV2FyZSBYUENTLCBh
bG9uZyB3aXRoIG5lY2Vzc2FyeQpmaXhlcyBhbmQgcmVmYWN0b3JpbmcgaW4gdGhlIHN0bW1hYyBj
b3JlIGFuZCBYUENTIGRyaXZlci4KCk1vdGl2YXRpb24KPT09PT09PT09PQpUaGUgUkszNTY4IGlu
dGVncmF0ZXMgYSBEVyBYUENTIGFjY2Vzc2VkIHZpYSBBUEIzIGFuZCBjb25uZWN0ZWQgdG8KYSBO
YW5lbmcgQ29tYm8gU2VyRGVzIFBIWS4gIFNldmVyYWwgYm9hcmRzIChlLmcuLCBBcmlhYm9hcmQK
UGhvdG9uaWNhdCkgdXNlIHRoaXMgaW50ZXJmYWNlIGZvciBHaWdhYml0IEV0aGVybmV0LiAgSG93
ZXZlciwgdGhlCmN1cnJlbnQgdXBzdHJlYW0gc3RtbWFjIGRyaXZlciBkb2VzIG5vdCBzdXBwb3J0
IHRoaXMgY29uZmlndXJhdGlvbiwKYW5kIHRoZSBYUENTIGRyaXZlciBoYXMgaXNzdWVzIGluIFNH
TUlJIHBvbGwgbW9kZSB0aGF0IGNhdXNlIHRoZQpsaW5rIHRvIGJlIHJlcG9ydGVkIGluY29ycmVj
dGx5LgoKVGhpcyBzZXJpZXMgYWRkcmVzc2VzIHRoZXNlIGlzc3VlcyBieToKLSBBZGRpbmcgQU5S
RVNUQVJUIHN1cHBvcnQgZm9yIFNHTUlJIGxpbmsgcmVjb3ZlcnkKLSBBZGRpbmcgYSBSb2NrY2hp
cCBYUENTIHBsYXRmb3JtIGdsdWUgZHJpdmVyIGFuZCB3aXJpbmcgaXQgdXAgaW4KICBkd21hYy1y
awoKU2VyaWVzIG92ZXJ2aWV3Cj09PT09PT09PT09PT09PQoKUkszNTY4IFhQQ1MvU0dNSUk6CiAg
UGF0Y2ggMTogRFQgYmluZGluZyBmb3IgUm9ja2NoaXAgUkszNTY4IFhQQ1MKICBQYXRjaCAyOiBh
ZGQgQU5SRVNUQVJUIHN1cHBvcnQgZm9yIFNHTUlJIGxpbmsgcmVjb3ZlcnkKICBQYXRjaCAzOiBp
bXBsZW1lbnQgdGhlIFJvY2tjaGlwIFhQQ1MgcGxhdGZvcm0gZ2x1ZSBkcml2ZXIKICBQYXRjaCA0
OiBEVCBiaW5kaW5nIGZvciBSb2NrY2hpcCBEV01BQyBQQ1MKICBQYXRjaCA1OiB3aXJlIHVwIFNH
TUlJIHN1cHBvcnQgaW4gZHdtYWMtcmsKICBQYXRjaCA2OiB1cGRhdGUgTUFJTlRBSU5FUlMKCkRl
cGVuZGVuY2llcwo9PT09PT09PT09PT0KLSBHZW5lcmljIFBNIGRvbWFpbiAoZ2VucGQpIGNoYW5n
ZXM6CiAgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwOTI1MDQxNzUxLjQ5NTgxOC0x
LWNvaWFwcmFudEBnbWFpbC5jb20vCi0gUEhZIGJpbmRpbmcrZHJpdmVyIChOYW5lbmcgQ29tYm8g
UEhZIFNHTUlJIE1BQyBzZWxlY3Rpb24pOgogIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8y
MDI2MTAwNTIyMTIyOS4xMDk1ODQzLTEtY29pYXByYW50QGdtYWlsLmNvbS8KLSBzdG1tYWMgWFBD
UyBsaWZldGltZSBtYW5hZ2VtZW50IGZpeDoKICBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwv
MjAyNjEwMDUyMjE3NDkuMTEwNDQzMC0xLWNvaWFwcmFudEBnbWFpbC5jb20vCgpUaGUgRFRTIGNo
YW5nZXMgdXNpbmcgdGhlIFBIWSBwcm9wZXJ0eSBhcmUgc2VudCBzZXBhcmF0ZWx5IHRvCkhlaWtv
L2xpbnV4LXJvY2tjaGlwLiBUaGVyZSBpcyBubyBoYXJkIGJ1aWxkIGRlcGVuZGVuY3k7IHRoZSBw
aWVjZXMKY2FuIGNvbnZlcmdlIGR1cmluZyB0aGUgbWVyZ2Ugd2luZG93LgoKQ2hhbmdlbG9nCj09
PT09PT09PQoKLSBSZXNlbmQgYW5kIHNwbGl0OiBQSFkgYmluZGluZytkcml2ZXIgc2VudCB0byBs
aW51eC1waHksIHN0bW1hYwogIGxpZmV0aW1lIGZpeCBhbmQgWFBDUyBiaW5kaW5nIHNlbnQgc2Vw
YXJhdGVseSwgRFRTIHNlbnQgdG8KICBsaW51eC1yb2NrY2hpcC4KCktleSBkZXNpZ24gZGVjaXNp
b25zCj09PT09PT09PT09PT09PT09PT09Ci0gVGhlIHN0bW1hYyBjb3JlIG5vdyBkZWxlZ2F0ZXMg
WFBDUyBjcmVhdGlvbiBlbnRpcmVseSB0byBwbGF0Zm9ybQogIGRyaXZlcnMgdmlhIHBjc19pbml0
L3Bjc19leGl0LiAgVGhpcyBpcyBuZWNlc3NhcnkgYmVjYXVzZSB0aGUKICBnZW5lcmljIFhQQ1Mg
Y3JlYXRpb24gbG9naWMgd291bGQgb3ZlcnJpZGUgYW55IFhQQ1Mgc2V0IHVwIGJ5IHRoZQogIHBs
YXRmb3JtIGRyaXZlci4KCi0gVGhlIFJvY2tjaGlwIFhQQ1MgZHJpdmVyIGNyZWF0ZXMgYSB2aXJ0
dWFsIE1ESU8gYnVzIG92ZXIgdGhlIEFQQjMKICByZWdpc3RlcnMgYW5kIGltcGxlbWVudHMgYWRk
cmVzcyByZW1hcHBpbmcuICBUaGUgZ2VuZXJpYyBYUENTIGNvcmUKICBoYW5kbGVzIGFsbCBQQ1Mg
Y29uZmlndXJhdGlvbiB2aWEgcGh5bGlua19wY3Nfb3BzLgoKLSBPbiBSSzM1NjggaW4gU0dNSUkg
bW9kZSwgdGhlIE1BQyBjbG9jayBpcyBmaXhlZCBhdCAxMjUgTUh6IGFuZAogIGNhbm5vdCBiZSBk
eW5hbWljYWxseSBjaGFuZ2VkLiAgSW4tYmFuZCBtb2RlIGlzIHVzZWQsIGFuZCB0aGUKICBnZW5l
cmljIHN0bW1hYyBzZXRfY2xrX3R4X3JhdGUgY2FsbGJhY2sgaXMgZGlzYWJsZWQgdG8gcHJldmVu
dAogIGluY29ycmVjdCBjbG9jayB1cGRhdGVzIHRoYXQgd291bGQgYnJlYWsgUlguCgotIFRoZSBT
ZXJEZXMgYW5kIHBvd2VyIGRvbWFpbiBhcmUgYXR0YWNoZWQgdG8gdGhlIFhQQ1MgZGV2aWNlIHRy
ZWUKICBub2RlIHJhdGhlciB0aGFuIHRoZSBNQUMgbm9kZS4gVGhpcyByZWZsZWN0cyB0aGUgYWN0
dWFsIGhhcmR3YXJlCiAgdG9wb2xvZ3kgYW5kIHNpbXBsaWZpZXMgdGhlIGR3bWFjLXJrIGRyaXZl
ciBieSBrZWVwaW5nIGFsbCBQQ1MtcmVsYXRlZAogIHJlc291cmNlcyBzZWxmLWNvbnRhaW5lZC4g
SXQgYWxzbyBwcmVwYXJlcyBmb3IgcG9zc2libGUgZnV0dXJlIFFTR01JSQogIHN1cHBvcnQsIHdo
ZXJlIGEgc2luZ2xlIFNlckRlcyBzZXJ2ZXMgbXVsdGlwbGUgTUFDcyBhbmQgd291bGQgYmUKICBt
b3JlIG5hdHVyYWxseSBtYW5hZ2VkIHVuZGVyIHRoZSBYUENTIG5vZGUuCgpUZXN0aW5nCj09PT09
PT0KQm9hcmQ6IEFyaWFib2FyZCBQaG90b25pY2F0IChSSzM1NjgpCk9TOiBBcm1iaWFuICh0cml4
aWUpCktlcm5lbDogNi4xOCAoYmFja3BvcnRzKQpSZXN1bHQ6IFRoZSBTR01JSSBpbnRlcmZhY2Ug
b2J0YWlucyBhbiBJUCBhZGRyZXNzLCBTU0ggd29ya3MsIGFuZAogICAgICAgIHBpbmcgdHJhZmZp
YyBwYXNzZXMgd2l0aG91dCBsb3NzLgoKTm90ZXMKPT09PT0KLSBXaGVuIHRlc3Rpbmcgb3V0LWJh
bmQgbW9kZSB3aXRoIHNldF9jbGtfdHhfcmF0ZSwgb25seSAxMDAwTWJwcwogIHdvcmtzIG9uIGJv
dGggVFgvUlg7IDEwLzEwME1icHMgb25seSB3b3JrcyBvbiBUWCBzaWRlLgoKQWNrbm93bGVkZ21l
bnRzCj09PT09PT09PT09PT09PQpUaGlzIHdvcmsgd2FzIGluc3BpcmVkIGJ5IGFuZCBidWlsZHMg
dXBvbiB0aGUgZXhjZWxsZW50IHdvcmsgb2Ygb3RoZXJzOgotIFNlcmdlIFNlbWluJ3MgU3lub3Bz
eXMgRGVzaWduV2FyZSBYUENTIHBsYXRmb3JtIGRyaXZlciAocGNzLXhwY3MtcGxhdC5jKQotIENs
w6ltZW50IEzDqWdlcidzIFJlbmVzYXMgTUlJQyBkcml2ZXIgKHBjcy1yem4xLW1paWMuYykKLSBU
aGUgUm9ja2NoaXAgVFJNIGFuZCBkb3duc3RyZWFtIE9FTSBkcml2ZXJzCgpUaGFua3MgaW4gYWR2
YW5jZSwKQ29pYSBQcmFudAotLS0KQ29pYSBQcmFudCAoNik6CiAgZHQtYmluZGluZ3M6IG5ldDog
cGNzOiBhZGQgcm9ja2NoaXAscmszNTY4LXhwY3Mgc3VwcG9ydAogIG5ldDogcGNzOiB4cGNzOiBh
ZGQgQU5SRVNUQVJUIHN1cHBvcnQgZm9yIFNHTUlJIGxpbmsgcmVjb3ZlcnkKICBuZXQ6IHBjczog
eHBjczogYWRkIFJvY2tjaGlwIFJLMzU2OCBwbGF0Zm9ybSBnbHVlIGRyaXZlcgogIGR0LWJpbmRp
bmdzOiBuZXQ6IHJvY2tjaGlwLWR3bWFjOiBkb2N1bWVudCBwY3MtaGFuZGxlCiAgbmV0OiBzdG1t
YWM6IGR3bWFjLXJrOiBhZGQgU0dNSUkgc3VwcG9ydCBmb3IgUkszNTY4CiAgTUFJTlRBSU5FUlM6
IGFkZCBlbnRyeSBmb3IgUm9ja2NoaXAgWFBDUyBkcml2ZXIKCiAuLi4vbmV0L3Bjcy9yb2NrY2hp
cCxyazM1NjgteHBjcy55YW1sICAgICAgICAgfCAxMTAgKysrKwogLi4uL2JpbmRpbmdzL25ldC9y
b2NrY2hpcC1kd21hYy55YW1sICAgICAgICAgIHwgIDE4ICsKIE1BSU5UQUlORVJTICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgOSArCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9z
dG1pY3JvL3N0bW1hYy9LY29uZmlnICAgfCAgIDEgKwogLi4uL25ldC9ldGhlcm5ldC9zdG1pY3Jv
L3N0bW1hYy9kd21hYy1yay5jICAgIHwgMTMwICsrKy0KIGRyaXZlcnMvbmV0L3Bjcy9LY29uZmln
ICAgICAgICAgICAgICAgICAgICAgICB8ICAyNSArCiBkcml2ZXJzL25ldC9wY3MvTWFrZWZpbGUg
ICAgICAgICAgICAgICAgICAgICAgfCAgIDUgKy0KIGRyaXZlcnMvbmV0L3Bjcy9wY3MteHBjcy1y
ay5jICAgICAgICAgICAgICAgICB8IDYxOSArKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvbmV0
L3Bjcy9wY3MteHBjcy5jICAgICAgICAgICAgICAgICAgICB8ICAzNSArLQogaW5jbHVkZS9saW51
eC9wY3MvcGNzLXhwY3MtcmsuaCAgICAgICAgICAgICAgIHwgIDExICsKIDEwIGZpbGVzIGNoYW5n
ZWQsIDkzNSBpbnNlcnRpb25zKCspLCAyOCBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0
NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3Bjcy9yb2NrY2hpcCxyazM1
NjgteHBjcy55YW1sCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvcGNzL3Bjcy14cGNz
LXJrLmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2xpbnV4L3Bjcy9wY3MteHBjcy1yay5o
CgotLSAKMi40Ny4zCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
