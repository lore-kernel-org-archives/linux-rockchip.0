Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6C7BC5B552
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Jun 2025 09:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wMh+5OkOcmR8q+82Y5KQpwxMT4/u5bMVSDRdRKzQBAU=; b=q63e1VCMzxgLZS
	mqN+jxWX7+SGbwTWbfThe5gqh71SB8ws19TOOihQUZMe56vidDGvtQI1OQ+3xC6yHYQ7fGk87fQ8B
	0NhMVBJFqac2qoVFITgeqGuRh7SJHtujhjsveHGsUDg+YYdmhUgg1HIsBvgKaPQH8t8/ehE5Zw3u7
	OYHGeTOkkt24YMwngNYpNU/lFcebdtYTiq1vz9Qoe46Zi59geTfbedakka/QjSr4Skx2fIORXOdtD
	GOH5dON0zLLWP70KF4s9xuLs2OxTKyeGRdaHyD0S3EndGhVUJfEUus3VKpJHWD1iVGta//9XnN38+
	o4bETnpJD1pBMM1RftRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOYeR-00000003kVk-3ge8;
	Mon, 09 Jun 2025 09:18:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOYSQ-00000003jKq-3Hnh;
	Mon, 09 Jun 2025 09:06:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=joBlEjrgr9muiP0UDjGGGTEJ6Vs1HF+Fy4q2Nr/4iJc=; b=d2TvmF6njbZP0r8VPzRz1pdgRw
	D0cGitUZxFqVoVAdpgEyLxt/bO6IhuzyPF1TWutbiciAOvR1zlTJB5b59Df0npsAiZseMTfbPsG5j
	f3hBHLG5LFVosHfH9fARI9OzCu93O3Wb7VnQow+eoxZa7MFsP3qwy+FQnzg5NI2faW/ibEjapB3ro
	6qJsxwqPcvAdy6AKnabOX1lRjHyO8/x+gUoWzT+vp3vz7COQwC2tRYN/dCQTxxwWpORh3+JVWfkls
	K5V0iUGo1JOOPeX3rP9NnQTrEJ7Lmw9cqSQZ0VCKrsprZzag7Rd+nGhz1GqPwYDZXFTvWrzZkWnqg
	ZbQJZ44A==;
Received: from i53875b1c.versanet.de ([83.135.91.28] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uOYSI-0005iM-T1; Mon, 09 Jun 2025 11:06:10 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: i@chainsx.cn, Hsun Lai <i@chainsx.cn>
Cc: andrew@lunn.ch, conor+dt@kernel.org, devicetree@vger.kernel.org,
 inindev@gmail.com, jonas@kwiboo.se, krzk+dt@kernel.org,
 krzysztof.kozlowski@linaro.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 quentin.schulz@cherry.de, robh@kernel.org, sfr@canb.auug.org.au
Subject: Re: [v5,0/2] Add support for Firefly Station-M3/ROC-RK3588S-PC
Date: Mon, 09 Jun 2025 11:06:10 +0200
Message-ID: <2607600.Icojqenx9y@phil>
In-Reply-To: <20250602153500.1831349-1-i@chainsx.cn>
References: <20250530031046.166202-1-i@chainsx.cn>
 <20250602153500.1831349-1-i@chainsx.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250609_020618_817688_74F0C289 
X-CRM114-Status: GOOD (  10.96  )
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

QW0gTW9udGFnLCAyLiBKdW5pIDIwMjUsIDE3OjM1OjAwIE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21t
ZXJ6ZWl0IHNjaHJpZWIgSHN1biBMYWk6Cj4gPiBJIHRyaWVkIHRvIHJlcGxpY2F0ZSBvbiB0b3Ag
b2YgbWFzdGVyIAo+ID4gKDI0ZGUyYjlkYTNlMjhkZjMyM2MxZTA5NjUzOGFlMWUwMzU3NTFhZGYp
IGJ1dCBjb3VsZG4ndCwgc28gSSBndWVzcyB3ZSAKPiA+IGNhbiBzaW1wbHkgaWdub3JlIHRoaXMg
d2FybmluZz8KPiAKPiBZZXMsIHRoZSBzYW1lIHNpdHVhdGlvbiBvY2N1cnMgaGVyZSwKPiBhbmQg
aXQgaGFzIGFscmVhZHkgYmVlbiBhbnN3ZXJlZCBieSBIZWlrbyBTdMO8Ym5lcigjMik6Cj4gaHR0
cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LXJvY2tjaGlwL2NvdmVyLzIw
MjUwNTE2MDEyNDAyLjU4MDQ2OC0xLWlAY2hhaW5zeC5jbi8KCk5vdyB3aXRoIDYuMTYtcmMxIG91
dCwgdGhpcyBzaG91bGQgZGlzYXBwZWFyLgoKQnV0IEknZCBhc3N1bWUgdGhhdCBib3QgY2hlY2sg
bWlnaHQgaGF2ZSBtb3ZlZCB0aGUgYmluZGluZyBvdXQgb2YgdGhlCnJldmlldyBxdWV1ZSBvZiB0
aGUgZHQtbWFpbnRhaW5lcnMsIHNvIEkgZ3Vlc3MgeW91IG1pZ2h0IHRyeSByZXNlbmRpbmcKdGhl
IHNlcmllcyBvbiB0b3Agb2YgdGhhdCwgYmVjYXVzZSB3ZSdyZSBtaXNzaW5nIGFuIFJldmlldy9B
Y2sgb24gdGhlCmJpbmRpbmcuCgoKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
