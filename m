Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3251C54EE3
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 May 2025 13:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wCJmSvtJOgSyvazC1Vwr+rCa9n36DQxQXEypAcZoa/g=; b=5GVBlswKr7Olt9
	OMYtfoIeDJubF6yiMMvJBfdlxO4elQIhuV2K9IGIRq4nTbKkZlrpC3O2QJrlTteM9kQ2Vr4Gr/49k
	fB3+c6PcXM+PfeGwDGgAxxY18Y2Qn8rJyWkkuooxWiqdk7+CCDSpYeBNtQC8n3RChP0fUTS/qq5tF
	vfGZrUMQJYcl+eCxSkzggnJHegZreqzsL//iw4hexVR7WheTMLZcfZdQPBRk/WFqnNsTRt8V9ueQW
	qUxFErmc6BUA03kxva7Sh6vKo9oRwKJsCMDd0Fx/PB3DPo7+Dg0Y510Wuf+M5j18jk2sLhsv1NS5G
	bM9/IU7MXKg7IuxxsLbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHjmz-0000000FzIe-3VSD;
	Wed, 21 May 2025 13:47:21 +0000
Received: from smtpbgbr1.qq.com ([54.207.19.206])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHjET-0000000FtML-2rsJ
	for linux-rockchip@lists.infradead.org;
	Wed, 21 May 2025 13:11:45 +0000
X-QQ-mid: esmtpgz16t1747833076tae521dda
X-QQ-Originating-IP: NRDtIp6wxGHIj53BWIcJvNUAWwQhM3ael0y7Wl3X1ko=
Received: from chainsx-ubuntu-server.lan ( [116.249.112.84])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 21 May 2025 21:11:14 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 3315312418809293864
EX-QQ-RecipientCnt: 16
From: Hsun Lai <i@chainsx.cn>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Subject: [PATCH v4 1/3] dt-bindings: vendor-prefixes: Add SakuraPi prefix
Date: Wed, 21 May 2025 21:11:06 +0800
Message-Id: <20250521131108.5710-2-i@chainsx.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250521131108.5710-1-i@chainsx.cn>
References: <20250521131108.5710-1-i@chainsx.cn>
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:chainsx.cn:qybglogicsvrsz:qybglogicsvrsz3a-0
X-QQ-XMAILINFO: NULd4DJcKZL/Si+IhAVqJvBoKkZMZOODzr3Yqt9hswfAvOMyqH635xvn
	3DSmAu+XKPkF1bbqVsizC00n8CQTlZtv4XJsjarkrqmDrsKDyQtw/wGphlXemvkHX+xdSd0
	KEbrsMp37MhcZl+XTi5mYgJGGLxPiVzjEdaZclZC12voF+h0t4/gHmqGP/iA5XCWkd+PnEB
	mzxieqa7ctof6y+WopYFP0xHOMAVF/lZ7MgP2Gwqtn4/mdv3Sp67jEwIQMKVTtHX/Oe0kw1
	xn8Kqqwx1yg1dv57zjUFDOviS6ArTS5JvfwJAlmyjh723pb35ptQ7JYaFrNK/lWwFqtYOEO
	2SySF4X7oa+xMHLLsOpFvq/7sMHdtET9j4TLc06lIf4OvPh5CCUeIe5LiK9qFG/4qGt+MX4
	0xEzcoGyAbREPByGiTwA8EfsNyPPJd8DAIMnKf9ulrYEKeSyu9ZCIeQCfr1xfDlqlgPxM+3
	SsdvorxsjR2780ZvWdIaxKYjPt0earjyWy7dZzQR8FXNA5feVN/BMWJTL6il65T1hh7HlRt
	lz2OXgwp/kiZMV08ifZEGS/STgRzc34MWAPvn6DWrPLoGvY1XNPxwr182LGYY661nhjChZX
	UkMioIyIOkL/y35SM5PKpIhxndUDKhwBCSTCUKIhO6P9UOfkvScYzioSHsj7EutpCgOZASC
	N6O2bQ8BB/HrN0dL4kZd0ikzly2FP3SOVog1UZclLN+e9VyK1Cib0iIgliy0Q+oWCvSEV+j
	MIcK40U7BU2jNvO6NDpI+dMKCnKV2rhtx9rqwiyO2GQ+4XtAW/TebN+0RTX23zjhr/CA4+h
	CTOQGD13WE8R/mlE/tTKOngy//CdUX5+BmAni9QDDNwVxm94CxbWJX0V7XOLTIt/Ihyfad1
	5g2F66hFAha301niwxV+ROjixDHu5iUuJL+IJOP+HqKLT+YRas/adYYTNOLY2TYWgmfshXA
	elwHkfzoPudC5MqVkbXRhEasUcbQ9AAICvYmPDsQUWY6Idj8daU5erD9ug4AfelU+i2n2/4
	v37VvYQw==
X-QQ-XMRINFO: NyFYKkN4Ny6FSmKK/uo/jdU=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_061142_528772_71A3A150 
X-CRM114-Status: UNSURE (   7.46  )
X-CRM114-Notice: Please train this message.
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
Cc: andrew@lunn.ch, inindev@gmail.com, heiko@sntech.de, jonas@kwiboo.se, quentin.schulz@cherry.de, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, krzysztof.kozlowski@linaro.org, devicetree@vger.kernel.org, i@chainsx.cn, sfr@canb.auug.org.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QWRkIHZlbmRvciBwcmVmaXggZm9yIFNha3VyYVBpLm9yZywgd2hpY2ggcHJvZHVjZXMKZGV2ZWxv
cG1lbnQgYm9hcmRzIGxpa2UgdGhlIFNha3VyYVBpLVJLMzMwOEIuCgpMaW5rOiBodHRwczovL2Rv
Y3Muc2FrdXJhcGkub3JnCgpTaWduZWQtb2ZmLWJ5OiBIc3VuIExhaSA8aUBjaGFpbnN4LmNuPgoK
LS0tCgpDaGFuZ2VzIGluIHY0OgotIEZpeCB2ZW5kb3IgcHJlZml4ZXMgZXJyb3IgKEtyenlzenRv
ZiBLb3psb3dza2kgdjIpCgogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3ZlbmRv
ci1wcmVmaXhlcy55YW1sIHwgMiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoK
ZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy92ZW5kb3ItcHJl
Zml4ZXMueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy92ZW5kb3ItcHJl
Zml4ZXMueWFtbAppbmRleCAzZTc0NTBjM2YuLjdlYjJlMTNlYSAxMDA2NDQKLS0tIGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3ZlbmRvci1wcmVmaXhlcy55YW1sCisrKyBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy92ZW5kb3ItcHJlZml4ZXMueWFtbApAQCAt
MTMwMCw2ICsxMzAwLDggQEAgcGF0dGVyblByb3BlcnRpZXM6CiAgICAgZGVzY3JpcHRpb246IFJl
Y2hhcmdlIFbDqWhpY3VsZSDDiWxlY3RyaXF1ZSAoUlZFKSBpbmMuCiAgICJec2FlZiwuKiI6CiAg
ICAgZGVzY3JpcHRpb246IFNhZWYgVGVjaG5vbG9neSBMaW1pdGVkCisgICJec2FrdXJhcGksLioi
OgorICAgIGRlc2NyaXB0aW9uOiBTYWt1cmFQaS5vcmcKICAgIl5zYW1zdW5nLC4qIjoKICAgICBk
ZXNjcmlwdGlvbjogU2Ftc3VuZyBTZW1pY29uZHVjdG9yCiAgICJec2FtdGVjLC4qIjoKLS0gCjIu
MzQuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
