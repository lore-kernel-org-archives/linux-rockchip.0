Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F00AFC5478C
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 11:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TwlaOFCIjUUwgrUHfwHiSgIGUq2YbXIgYKY7MUrjykM=; b=JBy33EmDz7P4a+
	BP8YJcH2D3Rn35x/cGr6nxwk7GlGFwOyix15kE5h72ggSBhWqns5jKlY1sC2qG/5eTyTxKncSecNZ
	+UqQL6RfW5g/knBL5lpWg0nYLLCWZHS72TXHkLfid+d4CLQK1JH9ugs5EJxf5X+ehKb9g93OKP0TN
	ZVilnmGhDiY1xijEk3LTNhoH8JFHLDe3V829GvYUkgcAF9Xvl9TR3ssOfR/3fTK7knvsHzBX6epAg
	q1P7nZSqewzhIoZ4K/6q/2q5B+c2q17S091wXFMYEU9RUROFuXHL5vfPJmuJ6pfmk2dJPbpCjoCgV
	mbM+6HtHMDuVnjQ7S10w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rew1I-000000050u9-206b;
	Tue, 27 Feb 2024 11:53:12 +0000
Received: from master.debian.org ([2001:41b8:202:deb:216:36ff:fe40:4001])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rew14-000000050oy-0jyN;
	Tue, 27 Feb 2024 11:52:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.master; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID
	:Content-Description; bh=s3U+zRWRxzvnf9Sem759MyEpLbrHg449pWPCJsuENig=; b=gzao
	Y9yuAIdZfwDNn4sTk5k1oewK5CWArYTeaikE22zTwCW+vkwVc72V+4ehWbD0MEL5lp6ER/AxRd61B
	6Bd7FK+OpChL8lMVq5nHNBY4JdT4mUzhk7wQRpIVBkMgouVso4gVbrPAy0MlmZ69HIxbDglQ7YBYN
	iIvF70A0c/kDEhpSLexmuzb5W0awb+EMK/SmebmJJQh9ebneI8zBfkpTno/h5bQyGpLR28SZax9/g
	3qcDKN7IjsYPsJ41G3P7pw4mBtHns+0cOSdtBAwBqOvOHPBi3mfjUjwKxhqSU60/LK2FOQ1gvXjx0
	ymhooh9Va1uKVi8omjQJWPk9sHy4pQ==;
Received: from ukleinek by master.debian.org with local (Exim 4.94.2)
	(envelope-from <ukleinek@master.debian.org>)
	id 1rew0z-005f8i-MS; Tue, 27 Feb 2024 11:52:53 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@debian.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add QNAP TS-433
Date: Tue, 27 Feb 2024 12:52:36 +0100
Message-ID: <a583992a896c80962b820803526eb593122c1692.1709034476.git.ukleinek@debian.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1709034476.git.ukleinek@debian.org>
References: <cover.1709034476.git.ukleinek@debian.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=837; i=ukleinek@debian.org; h=from:subject:message-id; bh=VCDP0pJWHBizCP2yuoFF/vmU5hrYsxfZtgMcQlFeU9o=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBl3c0HT75aPs5oRVoOw3/V05mNvAn0RECHsuiEe 4Eqjgp5leWJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZd3NBwAKCRCPgPtYfRL+ TnQbB/41xxZL+ZzLjUm9ZUbs9eP+eNzL5nISIDwxk/X9SLZB/eXjSCr6NbJ+gbtrkTE47IlrtbH 2YZJhLHmiCd93Z4KEDSX/wiqvsIXHfpOGFHW4aR0fu0x73ge9jV/15pIDSIX495X4M+gkpni+Ny Z6pcX1pJZzGL63tfYOIn8VMzAEKk7d74G0ysAFxkpsSBJM8LdHvjylrQ6yJl6GIa1WAr12wMOkR jC1sXWMGZR3J0WY6CgvhPeq4LhigfUePKVjO9e+Cy5pCuzhEdooEOVJy/Pl5lUFkpOuWkgup+UC QtglnlDfnv8r3UKUOg4LdnkXUbLD81T5js2eH2SkeZ+o1gxC
X-Developer-Key: i=ukleinek@debian.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_035258_368750_4452E243 
X-CRM114-Status: UNSURE (   8.55  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VGhpcyBpcyBhIFNPSE8gTkFTIHdpdGggNCBoZCBiYXlzIGFuZCA0IEdCIG9mIFJBTS4KClNpZ25l
ZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1a2xlaW5la0BkZWJpYW4ub3JnPgotLS0KIERv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbCB8IDUgKysr
KysKIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKaW5kZXggNWNmNWNiZWYy
Y2Y1Li4zODliZjBjN2Q3MDIgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKQEAgLTY5Nyw2ICs2OTcsMTEgQEAgcHJvcGVydGll
czoKICAgICAgICAgICAgICAgLSBwb3draWRkeSx4NTUKICAgICAgICAgICAtIGNvbnN0OiByb2Nr
Y2hpcCxyazM1NjYKIAorICAgICAgLSBkZXNjcmlwdGlvbjogUU5BUCBUUy00MzMtNEcgNC1CYXkg
TkFTCisgICAgICAgIGl0ZW1zOgorICAgICAgICAgIC0gY29uc3Q6IHFuYXAsdHM0MzMKKyAgICAg
ICAgICAtIGNvbnN0OiByb2NrY2hpcCxyazM1NjgKKwogICAgICAgLSBkZXNjcmlwdGlvbjogUmFk
eGEgQ29tcHV0ZSBNb2R1bGUgMyhDTTMpCiAgICAgICAgIGl0ZW1zOgogICAgICAgICAgIC0gZW51
bToKLS0gCjIuNDMuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
