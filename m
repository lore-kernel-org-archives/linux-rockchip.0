Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E82DCCD1A7
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 06:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8pkJq0virHZYGQ2agrQWSLpObVpZeqBO5Bp7sY6UOik=; b=Ts4Jpfl7ZbBmyT
	EX1c/xStGe5SIZ3z10o4VQ4dqye9X20qsazNka32oUPc3pa/FZtgkOZknrJEhg0DhMLEf2jSE3wCj
	mhB9NDNup5C+wCYq33izjlSyzlKqEKR/qL5NQFgDlI1/EOHg9vF6QZkkncIsJqcsWKhRWKMo9yYmD
	FbiP2KEO8MFmuuZImi+bz6etxWvb6YFo3RX0MJRAlPb6+j36C3E1KjAsSj9LkxeP4NiSJGkK/o+Uy
	uKiYRT1SOEiLfZzulPMdL23QvdxxshhH2WnwCy9i+0FcNRLv7PHDUxnuVqE2vJBhWeV6k+7tPKfIs
	068dQdl+EWRdmKwBd1Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB6HX-0000000FzSz-0COy;
	Tue, 21 Oct 2025 06:55:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB6HT-0000000FzRA-40aU;
	Tue, 21 Oct 2025 06:55:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=DFANFfBDNfwmZS1bR1NCqrK1UHkNYLSanN2dGOSuM3A=; b=VL0LgpC7cBFIhouCJRLnPx2gJ1
	TuanLtezDC53PVxzz/0H1xG5Bjg6zI/yEOpKAS39hAb2vtIeo5/ZD3FZ+TNJkdUkih4m93OAdQPZO
	NHmq18Z0P8/7lT5o4VjtXHncTsNScDaB7kNM/UQqG4hNuZrwLW3Gf2kBD54E1wxz/YavdY3VjgI4A
	uMM8iUa357mODJGIBHI6E3HRi7KFPeeyB0fSZX1Wq4zihRuWySYd7D/6KXmUL4/dooI6jIl5nBOne
	VF9vhQqFqSZ/UOY/yvD9VoB/2Cy+wgBywkALZlMPwxGi7p5u+cq5ubGBZ/eC4dnX9hO3/tGpLulE8
	y5JLkD9w==;
Received: from [212.111.240.218] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vB6HO-0000XV-AT; Tue, 21 Oct 2025 08:55:34 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, sboyd@kernel.org, sugar.zhang@rock-chips.com,
 zhangqing@rock-chips.com, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, Elaine Zhang <zhangqing@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, huangtao@rock-chips.com,
 finley.xiao@rock-chips.com
Subject: Re: [Resend PATCH v4 0/7] clk: rockchip: Add clock controller for the RV1126B
 and RK3506
Date: Tue, 21 Oct 2025 08:55:33 +0200
Message-ID: <8637519.NyiUUSuA9g@phil>
In-Reply-To: <20251021065232.2201500-1-zhangqing@rock-chips.com>
References: <20251021065232.2201500-1-zhangqing@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_235540_035179_D0172F54 
X-CRM114-Status: UNSURE (   9.42  )
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

SGkgRWxhaW5lLAoKQW0gRGllbnN0YWcsIDIxLiBPa3RvYmVyIDIwMjUsIDA4OjUyOjI1IE1pdHRl
bGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgRWxhaW5lIFpoYW5nOgo+IEFkZCB5YW1s
IGFuZCBkdC1iaW5kaW5ncyBmb3IgdGhlIFJWMTEyNkIgYW5kIFJLMzUwNi4KPiBSSzM1MDYgZGVw
ZW5kIG9uIHBhdGNoZXMgMS83IGFuZCA1LzcsIHNvIGl0IGlzIG1lcmdlZCBhbmQgc3VibWl0dGVk
LgoKdGhhbmtzIGEgbG90IGZvciBhbHNvIGluY2x1ZGluZyB0aGUgcmszNTA2IDotKSAuCgpJIHdh
cyBhYm91dCB0byBzdGFydCBsb29raW5nIGF0IHRoZSByazM1MDYgY2xvY2sgY29udHJvbGxlciwK
YnV0IGNhbiBub3cgZm9jdXMgb24gdGhlIG90aGVyIHBhcnRzIG9mIHRoZSBzb2MuCgoKSGVpa28K
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
