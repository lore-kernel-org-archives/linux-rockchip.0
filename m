Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB893C624D3
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2026 15:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1etMiAo14pumqrQC5/dvRLpMaY8QVvp2vjBwqR+pYbA=; b=ToU69zbmUHd59T
	IPWj27bFJaSG0GgoY+0CzTeV1mfDgR99uvgiz48kF4xXyrN/oHJZv78aSP6kdldDk1UYztpr3zwx3
	+yA3xOklOThyvWDehZstObr66vWgM9x2pD+VLUBhEgrlEL9EJq2KWlt66TL33jUgpZOLww1Mi/LqQ
	M/cUvtU1wpGnbJKphVNnpD909Z+EODpseA8Qz0fDGADEDItpSZdRMi8NDMTalC3yZhMjQ7pcdVq4i
	m/k5mOOlSzbJoLh+5GM1Rwpx2Aoh8YCHAGZMvhcosdZZggBqpsvIksxXYgiAotCGqdgA7psHiVYUM
	bqOS65THhBDMceFBNQsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Pzs-0000000CP81-2LcW;
	Tue, 01 Sep 2026 15:02:00 +0000
Received: from mail-pz2-x01.google.com ([2607:f8b0:4864:3b::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Pzq-0000000CP6k-0pcN
	for linux-rockchip@lists.infradead.org;
	Tue, 01 Sep 2026 15:01:59 +0000
Received: by mail-pz2-x01.google.com with SMTP id 41be03b00d2f7-c9fe62e0da3so1695089a12.1
        for <linux-rockchip@lists.infradead.org>; Tue, 01 Sep 2026 08:01:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788274916; x=1788879716; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=G4upqtk25tpRU54+kLrj9L2TKzcfs0ynaE33ROHv7ww=;
        b=r4QagH35Rv3IGIzZLDaLJ+VqnSjBCexsD/z7N+0hZpqR21WAvN87QHNZhQCL5ydYS8
         7etOWta4+X6Ktr5Qngye+d8n4naT5b+YI2t8AZ6u0iD0UC4Z4h1VOa2rktC2ryREj68I
         xs4gq1ukGKYDNYMNdmFqhs8TbiaQ9rScJf3Xe5MfRIb9XRC0COUmZ1xJ45fSJMBNaG2r
         62bcxTBIanECMXlOV7aBps4HCW1MdTsxdrH6boldT5fnpra5syATEq7CbsboMn+hvQRz
         9IpCc/70MiHOrbczIwfVvJxMNqKKweQhFwQ9DNbpTBPOHK4fC/Hco2j61oYaFCWfES7M
         J9hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788274916; x=1788879716;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=G4upqtk25tpRU54+kLrj9L2TKzcfs0ynaE33ROHv7ww=;
        b=eRaXSEfbK7SjUua6s6BcZ3HrNDBY/oCZ9RMDFa7Q5xfhZKwBRGMweNvIk08prpCUkR
         JrJICac5i1MzeDcyL2AsWi2LJ3O36aYXH21Bd9GrZirLVfnOZcJLLln0lL1Va31Cc6YT
         l9mhO8uWXQ4/sfwODbGvTDAwXj0247/SaeuOMCfOAOc+JMDRaWtXycMh7rf2jKnFBiRs
         RTl09n+kYHbFi5J5nRRPwpJ+kbfV0x95D0oLNUKFn8+P/MqNacwzcJDu91hxrECJ4wI9
         k6QkQBaU5hpSwR+qFm74d91sl88D3iqRzvTR3JCaQbVACYE2znzV0VO9RpCEaS179PyJ
         91EA==
X-Forwarded-Encrypted: i=1; AHgh+RpRrlP69rY9K5l3DsxwWuAGTRhhdWve2gNLqaAwnokZ4e+2wcEWdRqmva9S0FT8p6GsvnS3I+RB/srAoX+h6w==@lists.infradead.org
X-Gm-Message-State: AFuF++l9tBdi3KKFghooNNMrtU8JITJUhY/opjUQV1p6u4v910bJ3J3r
	IRP4tM47M98WOASjcPdQlBc4+pIR8JtLYvWZQf40KFcpVUz6rsaMOCd9bxRjeLhnbgBO3A==
X-Gm-Gg: AR+sD13fgQs3b82ASTvMq7oLTDdE5GP8U7nr+5adnwzjCspFluhZayWpdKYNqReIOnY
	ey8MafYukkffG7XZl/U9l4AFHXWHAYa/dOwa+sM6suYZ6lFxkbCCcXvCLc8WJy3OisVvHREN6fW
	SwnnvC9upKftVUY4mPRYhHl9BOJ1dA1qPfywLrx+8agNP3H54vMBqHCTpjlLfkm97//A+9TIxbK
	AWBk2HQj0lUvGB5sPFAcp9IuXBgkN3ZZR/Tzb4+XoBi8apL/jCS2r5z2n366k+2igOVYwpkIhq6
	M8ixWdz7bFutbgR9BppKwipdUlv0G1EbZsPrTbshwDZMRkJpTu7PlZecf3a2HU6LOb5A6xa2tS2
	F1WO06ZTZLvdjbQbbYDbw4TuKSCRgUsY0c7TKY8IHS0bdG3BP+aYj5qo7yQyuGoLW5RF6RyDGTH
	8Ct0xBJgyRxeNimNkchzS8XCH5HKsZFu736+cVAUwgfzg2tjCJZa7vdux/j+I=
X-Received: by 2002:a05:6a00:2d82:b0:857:73e2:9106 with SMTP id d2e1a72fcca58-85773e29373mr34165922b3a.22.1788274915955;
        Tue, 01 Sep 2026 08:01:55 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-85dc0716846sm27914b3a.45.2026.09.01.08.01.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 08:01:54 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Coia Prant <coiaprant@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v3 00/10] net: pcs: add basic support for RK3568 XPCS
Date: Tue,  1 Sep 2026 23:01:00 +0800
Message-ID: <20260901150111.141037-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_080158_255941_73D49E90 
X-CRM114-Status: GOOD (  19.38  )
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
dGx5LgoKVGhpcyBzZXJpZXMgYWRkcmVzc2VzIHRoZXNlIGlzc3VlcyBieToKLSBSZWZhY3Rvcmlu
ZyBzdG1tYWMgUENTIGxpZmV0aW1lIG1hbmFnZW1lbnQgdG8gYWxsb3cgcGxhdGZvcm0gZHJpdmVy
cwogIGZ1bGwgY29udHJvbCBvdmVyIFBDUyBjcmVhdGlvbi9kZXN0cnVjdGlvbgotIEZpeGluZyB0
aGUgWFBDUyBkcml2ZXIncyBTR01JSSBsaW5rIHJlY292ZXJ5Ci0gQWRkaW5nIGEgUm9ja2NoaXAg
WFBDUyBwbGF0Zm9ybSBnbHVlIGRyaXZlciBhbmQgd2lyaW5nIGl0IHVwIGluCiAgZHdtYWMtcmsK
ClNlcmllcyBvdmVydmlldwo9PT09PT09PT09PT09PT0KCkdlbmVyaWM6CiAgUGF0Y2ggMTogbW92
ZSBYUENTIGxpZmV0aW1lIG1hbmFnZW1lbnQgdG8gcGxhdGZvcm0gZHJpdmVycwoKUEhZOgogIFBh
dGNoIDI6IERUIGJpbmRpbmcgZm9yIE5hbmVuZyBDb21ibyBQSFkgU0dNSUkgTUFDIHNlbGVjdGlv
bgogIFBhdGNoIDM6IGltcGxlbWVudCB0aGUgUEhZIFNHTUlJIE1BQyBzZWxlY3Rpb24gaW4gZHJp
dmVyCgpSSzM1NjggWFBDUy9TR01JSToKICBQYXRjaCA0OiBEVCBiaW5kaW5nIGZvciBSb2NrY2hp
cCBSSzM1NjggWFBDUwogIFBhdGNoIDU6IGFkZCBYUENTIGFuZCBmaXhlZC1jbG9jayBub2RlcyB0
byByazM1NjguZHRzaQogIFBhdGNoIDY6IGFkZCBBTlJFU1RBUlQgc3VwcG9ydCBmb3IgU0dNSUkg
bGluayByZWNvdmVyeQogIFBhdGNoIDc6IGltcGxlbWVudCB0aGUgUm9ja2NoaXAgWFBDUyBwbGF0
Zm9ybSBnbHVlIGRyaXZlcgogIFBhdGNoIDg6IHdpcmUgdXAgU0dNSUkgc3VwcG9ydCBpbiBkd21h
Yy1yawogIFBhdGNoIDEwOiB1cGRhdGUgTUFJTlRBSU5FUlMKCkJvYXJkIGVuYWJsZW1lbnQ6CiAg
UGF0Y2ggOTogZW5hYmxlIFNHTUlJIExBTiBwb3J0IG9uIFBob3RvbmljYXQgYm9hcmQKCkNoYW5n
ZWxvZwo9PT09PT09PT0KCkNoYW5nZXMgc2luY2UgdjI6CgpQYXRjaCA0IChEVCBiaW5kaW5nIGZv
ciBSb2NrY2hpcCBSSzM1NjggWFBDUykKLSBNYWRlIHBoeXMsIHBoeS1uYW1lcywgcG93ZXItZG9t
YWlucyByZXF1aXJlZCBwcm9wZXJ0aWVzCi0gUmVtb3ZlZCByZWR1bmRhbnQgZGVzY3JpcHRpb25z
Ci0gRml4ZXMgcmVnIHJhbmdlcyByZXF1aXJlbWVudHMgZm9yIE1JSSBwb3J0CgpQYXRjaCA3IChu
ZXQ6IHBjczogeHBjczogYWRkIFJvY2tjaGlwIFJLMzU2OCBwbGF0Zm9ybSBnbHVlIGRyaXZlcikK
LSBSZW1vdmVkIGBkZXBlbmRzIG9uIFBNIHx8IENPTVBJTEVfVEVTVGAgZnJvbSBLY29uZmlnLAog
IEFSQ0hfUk9DS0NISVAgYWxyZWFkeSBzZWxlY3RzIFBNLgotIEFkZGVkIGBkZWZhdWx0IEFSQ0hf
Uk9DS0NISVBgIGluIEtjb25maWcKLSBBZGRlZCBjb21tZW50IGluIHhwY3Nfcmtfc2VyZGVzX3Bo
eV9wb3dlcm9uKCkgYW5kIHhwY3NfcmtfcmVtb3ZlKCkKLSBBZGRlZCBkZXZpY2VfbG9jaygpL2Rl
dmljZV91bmxvY2soKSBhcm91bmQgcGxhdGZvcm1fZ2V0X2RydmRhdGEoKQogIGluIHhwY3Nfcmtf
Y3JlYXRlKCkgdG8gcHJldmVudCBjb25jdXJyZW50IGRydmRhdGEgYWNjZXNzCi0gQWRkZWQgZXJy
b3IgaGFuZGxpbmcgZm9yIGRldmljZV9saW5rX2FkZCgpIGZhaWx1cmUKLSBTd2l0Y2hlZCBmcm9t
IFNFVF9SVU5USU1FX1BNX09QUyB0byBERUZJTkVfUlVOVElNRV9ERVZfUE1fT1BTCi0gQ2hhbmdl
ZCAucG0gZnJvbSBkaXJlY3QgcG9pbnRlciB0byBwbV9wdHIoKSBmb3IgcHJvcGVyIFBNIGhhbmRs
aW5nCgpQYXRjaCA5IChhcm02NDogZHRzOiByb2NrY2hpcDogcmszNTY4LXBob3RvbmljYXQpCi0g
Q2hhbmdlZCBQSFkgY29tcGF0aWJsZSBmcm9tICJldGhlcm5ldC1waHktaWQwMDAwLjAxMWEiIHRv
CiAgImV0aGVybmV0LXBoeS1pZWVlODAyLjMtYzIyIiAoZ2VuZXJpYyBDMjIgUEhZKQotIFJlbW92
ZWQgZWVlLWJyb2tlbi0qIHByb3BlcnRpZXMgKHVudXNlZCBwcm9wZXJ0aWVzKQoKS2V5IGRlc2ln
biBkZWNpc2lvbnMKPT09PT09PT09PT09PT09PT09PT0KLSBUaGUgc3RtbWFjIGNvcmUgbm93IGRl
bGVnYXRlcyBYUENTIGNyZWF0aW9uIGVudGlyZWx5IHRvIHBsYXRmb3JtCiAgZHJpdmVycyB2aWEg
cGNzX2luaXQvcGNzX2V4aXQuICBUaGlzIGlzIG5lY2Vzc2FyeSBiZWNhdXNlIHRoZQogIGdlbmVy
aWMgWFBDUyBjcmVhdGlvbiBsb2dpYyB3b3VsZCBvdmVycmlkZSBhbnkgWFBDUyBzZXQgdXAgYnkg
dGhlCiAgcGxhdGZvcm0gZHJpdmVyLgoKLSBUaGUgUm9ja2NoaXAgWFBDUyBkcml2ZXIgY3JlYXRl
cyBhIHZpcnR1YWwgTURJTyBidXMgb3ZlciB0aGUgQVBCMwogIHJlZ2lzdGVycyBhbmQgaW1wbGVt
ZW50cyBhZGRyZXNzIHJlbWFwcGluZy4gIFRoZSBnZW5lcmljIFhQQ1MgY29yZQogIGhhbmRsZXMg
YWxsIFBDUyBjb25maWd1cmF0aW9uIHZpYSBwaHlsaW5rX3Bjc19vcHMuCgotIE9uIFJLMzU2OCBp
biBTR01JSSBtb2RlLCB0aGUgTUFDIGNsb2NrIGlzIGZpeGVkIGF0IDEyNSBNSHogYW5kCiAgY2Fu
bm90IGJlIGR5bmFtaWNhbGx5IGNoYW5nZWQuICBJbi1iYW5kIG1vZGUgaXMgdXNlZCwgYW5kIHRo
ZQogIGdlbmVyaWMgc3RtbWFjIHNldF9jbGtfdHhfcmF0ZSBjYWxsYmFjayBpcyBkaXNhYmxlZCB0
byBwcmV2ZW50CiAgaW5jb3JyZWN0IGNsb2NrIHVwZGF0ZXMgdGhhdCB3b3VsZCBicmVhayBSWC4K
Ci0gVGhlIFNlckRlcyBhbmQgcG93ZXIgZG9tYWluIGFyZSBhdHRhY2hlZCB0byB0aGUgWFBDUyBk
ZXZpY2UgdHJlZQogIG5vZGUgcmF0aGVyIHRoYW4gdGhlIE1BQyBub2RlLiBUaGlzIHJlZmxlY3Rz
IHRoZSBhY3R1YWwgaGFyZHdhcmUKICB0b3BvbG9neSBhbmQgc2ltcGxpZmllcyB0aGUgZHdtYWMt
cmsgZHJpdmVyIGJ5IGtlZXBpbmcgYWxsIFBDUy1yZWxhdGVkCiAgcmVzb3VyY2VzIHNlbGYtY29u
dGFpbmVkLiBJdCBhbHNvIHByZXBhcmVzIGZvciBwb3NzaWJsZSBmdXR1cmUgUVNHTUlJCiAgc3Vw
cG9ydCwgd2hlcmUgYSBzaW5nbGUgU2VyRGVzIHNlcnZlcyBtdWx0aXBsZSBNQUNzIGFuZCB3b3Vs
ZCBiZQogIG1vcmUgbmF0dXJhbGx5IG1hbmFnZWQgdW5kZXIgdGhlIFhQQ1Mgbm9kZS4KClRlc3Rp
bmcKPT09PT09PQpCb2FyZDogQXJpYWJvYXJkIFBob3RvbmljYXQgKFJLMzU2OCkKT1M6IEFybWJp
YW4gKHRyaXhpZSkKS2VybmVsOiA2LjE4IChiYWNrcG9ydHMpClJlc3VsdDogVGhlIFNHTUlJIGlu
dGVyZmFjZSBvYnRhaW5zIGFuIElQIGFkZHJlc3MsIFNTSCB3b3JrcywgYW5kCiAgICAgICAgcGlu
ZyB0cmFmZmljIHBhc3NlcyB3aXRob3V0IGxvc3MuCgpOb3Rlcwo9PT09PQotIFdoZW4gdGVzdGlu
ZyBvdXQtYmFuZCBtb2RlIHdpdGggc2V0X2Nsa190eF9yYXRlLCBvbmx5IDEwMDBNYnBzCiAgd29y
a3Mgb24gYm90aCBUWC9SWDsgMTAvMTAwTWJwcyBvbmx5IHdvcmtzIG9uIFRYIHNpZGUuCgpEZXBl
bmRlbmNpZXMKPT09PT09PT09PT09Ck5vbmUuIEFsbCBwYXRjaGVzIGFwcGx5IGNsZWFubHkgb24g
dG9wIG9mIHRvcnZhbGRzIG1hc3RlciB0cmVlICh2Ny4zKS4KCkFja25vd2xlZGdtZW50cwo9PT09
PT09PT09PT09PT0KVGhpcyB3b3JrIHdhcyBpbnNwaXJlZCBieSBhbmQgYnVpbGRzIHVwb24gdGhl
IGV4Y2VsbGVudCB3b3JrIG9mIG90aGVyczoKLSBTZXJnZSBTZW1pbidzIFN5bm9wc3lzIERlc2ln
bldhcmUgWFBDUyBwbGF0Zm9ybSBkcml2ZXIgKHBjcy14cGNzLXBsYXQuYykKLSBDbMOpbWVudCBM
w6lnZXIncyBSZW5lc2FzIE1JSUMgZHJpdmVyIChwY3MtcnpuMS1taWljLmMpCi0gVGhlIFJvY2tj
aGlwIFRSTSBhbmQgZG93bnN0cmVhbSBPRU0gZHJpdmVycwoKVGhhbmtzIGluIGFkdmFuY2UsCkNv
aWEgUHJhbnQKLS0tCkNvaWEgUHJhbnQgKDEwKToKICBuZXQ6IHN0bW1hYzogbW92ZSBYUENTIGxp
ZmV0aW1lIG1hbmFnZW1lbnQgdG8gcGxhdGZvcm0gZHJpdmVycwogIGR0LWJpbmRpbmdzOiBwaHk6
IHJvY2tjaGlwOiBuYW5lbmctY29tYnBoeTogYWRkIHJvY2tjaGlwLHNnbWlpLW1hYy1zZWwKICAg
IHByb3BlcnR5CiAgcGh5OiByb2NrY2hpcDogbmFuZW5nLWNvbWJwaHk6IGFkZCBTR01JSSBNQUMg
c2VsZWN0aW9uIGZvciBSSzM1NjgKICBkdC1iaW5kaW5nczogbmV0OiBwY3M6IGFkZCByb2NrY2hp
cCxyazM1NjgteHBjcyBzdXBwb3J0CiAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IHJrMzU2ODogYWRk
IFhQQ1MgYW5kIGZpeGVkLWNsb2NrIG5vZGVzCiAgbmV0OiBwY3M6IHhwY3M6IGFkZCBBTlJFU1RB
UlQgc3VwcG9ydCBmb3IgU0dNSUkgbGluayByZWNvdmVyeQogIG5ldDogcGNzOiB4cGNzOiBhZGQg
Um9ja2NoaXAgUkszNTY4IHBsYXRmb3JtIGdsdWUgZHJpdmVyCiAgbmV0OiBzdG1tYWM6IGR3bWFj
LXJrOiBhZGQgU0dNSUkgc3VwcG9ydCBmb3IgUkszNTY4CiAgYXJtNjQ6IGR0czogcm9ja2NoaXA6
IHJrMzU2OC1waG90b25pY2F0OiBlbmFibGUgU0dNSUkgTEFOIHBvcnQKICBNQUlOVEFJTkVSUzog
YWRkIGVudHJ5IGZvciBSb2NrY2hpcCBYUENTIGRyaXZlcgoKIC4uLi9iaW5kaW5ncy9uZXQvcGNz
L3JvY2tjaGlwLWR3eHBjcy55YW1sICAgICB8IDExMCArKysrCiAuLi4vcGh5L3BoeS1yb2NrY2hp
cC1uYW5lbmctY29tYnBoeS55YW1sICAgICAgfCAgMTMgKwogTUFJTlRBSU5FUlMgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgICA5ICsKIC4uLi9ib290L2R0cy9yb2NrY2hpcC9y
azM1NjgtcGhvdG9uaWNhdC5kdHMgICB8ICA3NCArKy0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTY4LmR0c2kgICAgICB8ICA0NSArKwogZHJpdmVycy9uZXQvZXRoZXJuZXQvc3Rt
aWNyby9zdG1tYWMvS2NvbmZpZyAgIHwgICAxICsKIC4uLi9uZXQvZXRoZXJuZXQvc3RtaWNyby9z
dG1tYWMvZHdtYWMtaW50ZWwuYyB8ICA0NCArLQogLi4uL3N0bWljcm8vc3RtbWFjL2R3bWFjLXJl
bmVzYXMtZ2JldGguYyAgICAgIHwgICA3ICstCiAuLi4vbmV0L2V0aGVybmV0L3N0bWljcm8vc3Rt
bWFjL2R3bWFjLXJrLmMgICAgfCAxMjEgKysrLQogLi4uL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0
bW1hYy9kd21hYy1yem4xLmMgIHwgICA3ICstCiAuLi4vZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMv
ZHdtYWMtc29jZnBnYS5jICAgfCAgIDcgKy0KIC4uLi9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1t
YWMvc3RtbWFjX21kaW8uYyB8ICAzNyArLQogZHJpdmVycy9uZXQvcGNzL0tjb25maWcgICAgICAg
ICAgICAgICAgICAgICAgIHwgIDIzICsKIGRyaXZlcnMvbmV0L3Bjcy9NYWtlZmlsZSAgICAgICAg
ICAgICAgICAgICAgICB8ICAgNyArLQogZHJpdmVycy9uZXQvcGNzL3Bjcy14cGNzLXJrLmMgICAg
ICAgICAgICAgICAgIHwgNTYxICsrKysrKysrKysrKysrKysrKwogZHJpdmVycy9uZXQvcGNzL3Bj
cy14cGNzLmMgICAgICAgICAgICAgICAgICAgIHwgIDE2ICstCiAuLi4vcm9ja2NoaXAvcGh5LXJv
Y2tjaGlwLW5hbmVuZy1jb21icGh5LmMgICAgfCAgIDggKwogaW5jbHVkZS9saW51eC9wY3MvcGNz
LXhwY3MtcmsuaCAgICAgICAgICAgICAgIHwgIDExICsKIDE4IGZpbGVzIGNoYW5nZWQsIDEwMzMg
aW5zZXJ0aW9ucygrKSwgNjggZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9wY3Mvcm9ja2NoaXAtZHd4cGNzLnlhbWwK
IGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC9wY3MvcGNzLXhwY3MtcmsuYwogY3JlYXRl
IG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvcGNzL3Bjcy14cGNzLXJrLmgKCi0tIAoyLjQ3LjMK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
