Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B498C3ABDA
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 May 2025 08:05:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rREWmuJik49bzpc6HiYCbdGccgO2/Ezss0j88hgxL88=; b=NJpFYmIZVFMaT4
	xVyw3PEuYvsMwow7lbf7fM9qd5/FlG0M1Lt+XKmgHqVydYyGRnlMYPh9MpL5CMXkD5HRaQU+2f4vI
	6PsNcivDL4ucwRu7wrroC/i1wqXkS78ODV1+6tHXrUt2Fy0UzPnNPE8VWYvYDIJnMDadJAEzkXfdJ
	HPyqG7iZkTd1lelpNrrvimTkh+BMAeVcvj/e0w8NSiKvtIMcRHo9jKI/KvXnfoWxt9qTBJlw4O8dn
	pIlWYPnXH6DGNm5FwSD01KgGDITXqbxXY2D/4H/YiqJJXjUqWrxVbBOpZPsSg9nO7KK0+zfgXbeEc
	PwmyBlV0FkKc4IQdXBhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uF76u-0000000EQpG-1Mw3;
	Wed, 14 May 2025 08:05:04 +0000
Received: from smtpbgeu2.qq.com ([18.194.254.142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uF72A-0000000EPpV-3OTM;
	Wed, 14 May 2025 08:00:15 +0000
X-QQ-mid: esmtpgz12t1747209563t3de3214b
X-QQ-Originating-IP: qDZHVQiDsVrnVL88kG5FeaFrEm3p5WZn7MIIute6HfE=
Received: from chainsx-ubuntu-server.lan ( [182.242.225.107])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 14 May 2025 15:59:22 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 10427985286960112042
EX-QQ-RecipientCnt: 10
From: Hsun Lai <i@chainsx.cn>
To: robh@kernel.org
Cc: i@chainsx.cn,
	conor+dt@kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	sfr@canb.auug.org.au,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Add SakuraPi prefix
Date: Wed, 14 May 2025 15:59:12 +0800
Message-Id: <20250514075914.194651-2-i@chainsx.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250514075914.194651-1-i@chainsx.cn>
References: <20250514075914.194651-1-i@chainsx.cn>
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:chainsx.cn:qybglogicsvrsz:qybglogicsvrsz3a-0
X-QQ-XMAILINFO: MMNR99wQqbHFNe7d4uPLaztF3S0tz/a+KFbwmdEdnQflYRADemmzPW+G
	YDuEBcYDok9kaDW23bTIEvaweLbaEfzK+vx5CQOizSwzv3Qj6AcmH3/k19cGs9yi+LSvkrs
	8SBL82K3BhHpIgu0WC8oDf2mChjK3IuBEv94NViUSkcFPLAQnu5UBaR4byp0Aj8DPKpGAKE
	vU0IvzIi6x6NU7FW494T5rhTxWHw3KIPm+iv57G2cXNb6a1LXFzV/IJSfI1anw5nXZpOume
	FLvFgJRKoxdgsIZNlTn70DJUnhqBdlZ0hkPwPd1uJ54LQz/bwPp1NzsKnAzsfla8+H1t4vo
	4T8JdWi+WVYetkIiS0RPdjXICS6wyv6IGOVZRrPOs4YwuCrtEPyjyq4WxDtsgSYhJaIHEtp
	dERsvj7u3xkNuUPot/NVlnUOEkOcQU+YeIzgtOyWA5RkUIx1VuQ9hwjWeYHtXpOGVYBB/UC
	qByP5KdCZZTb2VytgIHw2PrFRBRfwMhC2D4BwqB9xtk0HRSzpJIJEUE1doEewU17auNDr/M
	dUF82iJf6yI9+D9qDidcSRt3Db7XDZQe5PJUTFjoPm40s7WicNzO+LZFGHuh1seG3yfRMQz
	JyzfkJKYh0cChRteq4vCtwOUMp7YthYCImYimF8vwV80pjziArg0elagqQGOOt0Hhkl8k8g
	uQ7OJZoAJva0lJCTVtFl4N5eugXPCxjy9HMlg+a+iuwwS4uaFsk47unEkeRydfd3q516jg4
	r6bc1Xta5Vxd8hMzDz2VYZg+2TqAkafsSv1dLoPIJxZt0NakHBQRfVvs4WlrXkn9vpOmfdA
	eviwIi5vlOuXzapN3lZijqP2KopCsh3dlm53ix3kK8ujurKbIrxKX7mvAqeWMVXm48zV98d
	l++dhJuuQ8uveVft+NjEh7JngG3tLqMQnqGmRXzJb5b4AfEQUZjzg1XfBGdy/8pf6XvyCGb
	xCoE/4Z8kefJXfwlkToAgxBz+P99zUR2qFw5rqV5x0fjABki3pCAoHalU6oKHylNgFQM=
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_010011_442644_0DFD2B80 
X-CRM114-Status: UNSURE (   7.72  )
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

QWRkIHZlbmRvciBwcmVmaXggZm9yIFNha3VyYVBpLm9yZywgd2hpY2ggcHJvZHVjZXMKZGV2ZWxv
cG1lbnQgYm9hcmRzIGxpa2UgdGhlIFNha3VyYVBpLVJLMzMwOEIuCgpTaWduZWQtb2ZmLWJ5OiBI
c3VuIExhaSA8aUBjaGFpbnN4LmNuPgotLS0KCihubyBjaGFuZ2VzIHNpbmNlIHYxKQoKIERvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy92ZW5kb3ItcHJlZml4ZXMueWFtbCB8IDIgKysK
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwKaW5kZXggM2U3NDUw
YzNmLi43NDRkMDFhNzYgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy92ZW5kb3ItcHJlZml4ZXMueWFtbAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwKQEAgLTEyOTksNiArMTI5OSw4IEBAIHBhdHRl
cm5Qcm9wZXJ0aWVzOgogICAiXnJ2ZSwuKiI6CiAgICAgZGVzY3JpcHRpb246IFJlY2hhcmdlIFbD
qWhpY3VsZSDDiWxlY3RyaXF1ZSAoUlZFKSBpbmMuCiAgICJec2FlZiwuKiI6CisgICAgZGVzY3Jp
cHRpb246IFNha3VyYVBpLm9yZworICAiXnNha3VyYXBpLC4qIjoKICAgICBkZXNjcmlwdGlvbjog
U2FlZiBUZWNobm9sb2d5IExpbWl0ZWQKICAgIl5zYW1zdW5nLC4qIjoKICAgICBkZXNjcmlwdGlv
bjogU2Ftc3VuZyBTZW1pY29uZHVjdG9yCi0tIAoyLjM0LjEKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
