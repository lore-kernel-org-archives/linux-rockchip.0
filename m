Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C15F1C5AD49
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Jun 2025 15:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BuUk/IAmgOnyjVsper9uEYXdFED0O4pw7PgI4cNv/2g=; b=ScssKdakh4G7hN
	9puz51n2yaFjZXR71cA+VARagGDis+rMgI0YLHWXEWiZcjN+YCLNW9vKZbBRjKiWr7LS7Asg+yxER
	QQdFnGKGtJ/GMO49OWfp5ghAp0y3jv7b4PhU5a6vi+yNvlIvXALQogd6nrpc1evrILe9biryHYj6h
	dA0/jasgcq69x+Ch0qSdLZG+8tAlyliwyYGOac9JrVc3znCuhTyjDetakgwYolhGxjWRS7jPdCB1f
	I60Cara+5ZXBFpRDW/ojQWsOxSXdyxONbklZw4Cje9SBnLmuDzGuaJPV5RnDEZjyuL4t3qVXMpXYg
	RMA1E+G9DLdx/R94eMbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM7Ot-00000007ocl-1i5g;
	Mon, 02 Jun 2025 15:48:35 +0000
Received: from smtpbguseast3.qq.com ([54.243.244.52])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM7Df-00000007mVN-2KRf;
	Mon, 02 Jun 2025 15:37:02 +0000
X-QQ-mid: esmtpgz12t1748878503t61ff263f
X-QQ-Originating-IP: 6W6+bQXnVHQhbo8HPKV1XPMJMh78ckaDklHZl58FLdI=
Received: from chainsx-ubuntu-server.lan ( [182.245.65.132])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 02 Jun 2025 23:35:01 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 1004114850195244819
EX-QQ-RecipientCnt: 15
From: Hsun Lai <i@chainsx.cn>
To: i@chainsx.cn
Cc: andrew@lunn.ch,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	inindev@gmail.com,
	jonas@kwiboo.se,
	krzk+dt@kernel.org,
	krzysztof.kozlowski@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	quentin.schulz@cherry.de,
	robh@kernel.org,
	sfr@canb.auug.org.au
Subject: [v5,0/2] Add support for Firefly Station-M3/ROC-RK3588S-PC
Date: Mon,  2 Jun 2025 23:35:00 +0800
Message-Id: <20250602153500.1831349-1-i@chainsx.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250530031046.166202-1-i@chainsx.cn>
References: <20250530031046.166202-1-i@chainsx.cn>
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:chainsx.cn:qybglogicsvrsz:qybglogicsvrsz3a-0
X-QQ-XMAILINFO: MmPNY57tR1XnAuyHkoBJpNXrUgKouBwLgrWRV/UU1nW9ZU1Pt7nqKt1D
	PdOzyWadaH5bRoLPFOGkqMEKuYLTZXnb6j3IdrCOwfKQ2VCecQOO0DcP2yRUrYxPgTNtQom
	9t12Ny8U/6lcvyE7m5wAUoRZnnWON9/uLw2q/0ky4EuY7NsQariv1AUBOlUHrfn2jjXA6IV
	a0Nv2uWu+G3eqavtXp82bAPySYQ6TqUVMlWAnqymTDaPyovr97PFkVW8GzYkRTXexIsA+zy
	FFcw1gLYMt+yb+HktryrldIUGbg8cCA7G9BUlfIkfwviRrXlzZu1LRtT5gvfnsrwEhSetvk
	K5e6AItozI/8SNLfUJQdK1vCcBofJgyNj2vGGAHEj7vr6EEDdaeZ7FJbXM/LiAS5dcEMrz7
	9Bz+8nX8wXGfpE7nPNMbP9aUjOPR1rzoaYLCNWYC0YgAGsw7QYG7W1aDHfWWaQHOdDMVMju
	9CMbvyjf9r924t9R8yo85Eq3wTog3S2SnZegT8ZZshwgyu0GJL9y78IawDu3mrKaMnMA3Nc
	Ca3h8kWlKCLJgPnxJNudk37abgn0ufI8hz5HFDT4jCsp8R7AxTFh2/WN9yH3OahEtKjHqka
	EQI+eUFhnT2OfgkEC+fuhkdFB8gCkt+j+O7Od2W7JGP9aYiQuaiUhyYOY99KXIg4LNf56Fe
	33385UD77RjVGDuqO9sb6DUxeZXRL/vE0Cruvt3xfb1wVsbWh4tBMZmt+gy+3+YZco24SyZ
	emdq2naaBSwD6sEBD0enHT5UhNw8jCnSjGFDXVv8NlM1W/eEh1kfILBrabT8vH8tr/OYeNv
	pyt7Qtn/7C8hfW4ZtgYZcvSVk3FTTtsl8mOewTfWnH5L6nBp2zJIoaUd+WdaatRcepbCQEs
	zCDU2G6EbeHZt1HTxHEk995yEdXjGMuhdZZhYktq4/qqt0FM0xMjwd4Pr4YnyBa9jI7TyCW
	bHbUtqfoiGPFfKm/Cl7RElAFxzNuDC+tfgKdmZen+SIrSZI8xQ5UiVeUwudGptCnvhpei+7
	MpNKlDgNXlqVszmy6z7v3JnRDkzzh5OEPQ0qG7PQ==
X-QQ-XMRINFO: OWPUhxQsoeAVDbp3OJHYyFg=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_083700_115383_61FBADF1 
X-CRM114-Status: UNSURE (   6.20  )
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

PiBJIHRyaWVkIHRvIHJlcGxpY2F0ZSBvbiB0b3Agb2YgbWFzdGVyIAo+ICgyNGRlMmI5ZGEzZTI4
ZGYzMjNjMWUwOTY1MzhhZTFlMDM1NzUxYWRmKSBidXQgY291bGRuJ3QsIHNvIEkgZ3Vlc3Mgd2Ug
Cj4gY2FuIHNpbXBseSBpZ25vcmUgdGhpcyB3YXJuaW5nPwoKWWVzLCB0aGUgc2FtZSBzaXR1YXRp
b24gb2NjdXJzIGhlcmUsCmFuZCBpdCBoYXMgYWxyZWFkeSBiZWVuIGFuc3dlcmVkIGJ5IEhlaWtv
IFN0w7xibmVyKCMyKToKaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4
LXJvY2tjaGlwL2NvdmVyLzIwMjUwNTE2MDEyNDAyLjU4MDQ2OC0xLWlAY2hhaW5zeC5jbi8KCkJl
c3QgcmVnYXJkcywKSHN1bgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
