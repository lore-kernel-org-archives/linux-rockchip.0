Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2797D29DDE
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 06:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U1dAsDqqZsbDBArnmkWdVbA3OmhcUQeM5mzN6zPukig=; b=ZymK2BtjDcgq+V
	b7AEn5vb9pqIdWwFDuMqXTtxzk7OfAAMzDXgfyCjuCC6UmYPl7QOiGvFrselBUqjcM1RFpymdZ5Ac
	UTnvypd2oRm5WsVZnpNh0xHS9G2ukAHFgtovOr55H+gsShZl3JFa4kRPPJ2w701ffeKOjBorDhB/X
	Th7ST0h7jgTJdsBu+d1vXgjBKCEuolVQl+Uv+oe+2TAcDiEvq/VnW/01VkYtYAi8ijt2fFscFecYO
	LlsJO0e7b79Fx9nsKhJKH7v6rzspYv5HTjNCjw2VB9ZM4zMAkvGxQuN9K2FOhOG85k/45muDoUz/3
	ci11EZ5/UDjMCqSwQlsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfY6m-00000006beE-1SgX;
	Tue, 13 Jan 2026 06:42:28 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfY6k-00000006bdQ-44zY;
	Tue, 13 Jan 2026 06:42:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 132E46001D;
	Tue, 13 Jan 2026 06:42:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F15C19421;
	Tue, 13 Jan 2026 06:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768286545;
	bh=8tXZjIGktkSj/gIsBOODpm0xDPGQpoD1AscqdH+ddjM=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=jUJ7yxR3zF7iMneSOtjf32VJ2lqx02jnF6tHFVQSHPXMhiU2MNm/VKm2ACxEx7sz7
	 njtst3O8l4UEiPGdfpiL/9Qd/5mDZKYOADJ0Ouge3eDJ9VPPgo4FalS6zgMjv7Q7dy
	 QO4xoGykMTc0ndD/t4MWnlL9zqFceCEIEzVf731yLgvMptpPdBof89zMfUZMUkYdQy
	 yBAL1rwRnv3ldJrf/R6RJMeUR7TDbbcBQFtbrHS7OQtxd/XSwDkAM0cMyJ4a09ZljL
	 TweD/lBJujQZFY8Ed6c5zFrDb/BmUTZ15hd/8OLtgptEP8foRr1n6nXD8S9m+eFpSO
	 Bl/ajQof/1u5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A11F6D29DC3;
	Tue, 13 Jan 2026 06:42:25 +0000 (UTC)
From: Rudraksha Gupta via B4 Relay <devnull+guptarud.gmail.com@kernel.org>
Subject: [PATCH 0/3] Pinephone Pro Connectivity: Adding Modem, Bluetooth,
 and Wi-Fi
Date: Mon, 12 Jan 2026 22:42:23 -0800
Message-Id: <20260112-ppp_connectivity-v1-0-284d6e83b212@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAFDpZWkC/yXN2wrCMAyA4VcZvTbSlh3cEPE9ZIzaxRlY29nWq
 ojvbp25+wP58mYBPWFgXfFmHhMFcjaH2BRMX5WdEGjMzSSXNRdCwrIsg3bWoo6UKL6gwjFPcy5
 bXrJ8tni80HMlT/2/Pd7uWY7/JTMYglrlrthnuBJSVis803SNg9Ia58GoaUhuhtE9LKQaOOx00
 6oSdw3n4jgZRfNWO3P4PT2rgJDDUOyKVG9FC15XrP98vtxVLGDiAAAA
X-Change-ID: 20260112-ppp_connectivity-5edddd7b4904
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Lee Jones <lee@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Rudraksha Gupta <guptarud@gmail.com>, Martijn Braam <martijn@brixit.nl>, 
 =?utf-8?q?Kamil_Trzci=C5=84ski?= <ayufan@ayufan.eu>, 
 Ondrej Jirman <megi@xff.cz>, Danct12 <danct12@disroot.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768286545; l=3352;
 i=guptarud@gmail.com; s=20240916; h=from:subject:message-id;
 bh=8tXZjIGktkSj/gIsBOODpm0xDPGQpoD1AscqdH+ddjM=;
 b=zixIm9Y8C+p6V0XPwI08j+ah9mKT91Eo3L76RzVp8W0TjkE+M7AfqSyS7f5AfgUzSQLMyLDEY
 Evxb8NGmqQvBlzyD44ElB20KzPu0uvR7fz8zWayHjnDK1RRsv2JfkCE
X-Developer-Key: i=guptarud@gmail.com; a=ed25519;
 pk=ETrudRugWAtOpr0OhRiheQ1lXM4Kk4KGFnBySlKDi2I=
X-Endpoint-Received: by B4 Relay for guptarud@gmail.com/20240916 with
 auth_id=211
X-Original-From: Rudraksha Gupta <guptarud@gmail.com>
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
Reply-To: guptarud@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Q29udGludWluZyB0aGUgd29yayBvbiB1cHN0cmVhbWluZyBQaW5lcGhvbmUgUHJvIGZ1bmN0aW9u
YWxpdHksCnRoaXMgcGF0Y2ggc2VyaWVzIGdldHMgdGhlIGNvbm5lY3Rpdml0eSBzaWRlIG9mIHRo
ZSBQaW5lcGhvbmUgUHJvCm1haW5saW5lZC4gSGVyZSBhcmUgdGhlIGZvbGxvd2luZyBwYXRjaGVz
IHdpdGggc291cmNlcyB0byB0aGUgb3JpZ2luYWwKaW1wbGVtZW50YXRpb24ocyk6Cgphcm02NDog
ZHRzOiByb2NrY2hpcDogUmVtb3ZlIGludGVycnVwdCBHUElPIGZvciBXaUZpIGZvciB0aGUgUGlu
ZXBob25lIFBybwotIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBEaXNhYmxlIGludGVycnVwdCBHUElP
IGZvciBXaUZpIGZvciB0aGUgUGluZXBob25lIFBybwotLS0tLSBodHRwczovL2NvZGViZXJnLm9y
Zy9tZWdpL2xpbnV4L2NvbW1pdC83Mzk1NjYyZWI2NzAwYmExOWE5MmZiZmIyNDRkNDg1OGYwODQw
NGYzCgptZmQ6IHJrOHh4LWNvcmU6IENvbmZpZ3VyZSBgcms4MDgtY2xrb3V0MmAgZnVuY3Rpb24K
LSBwb3dlcjogcms4MTg6IENvbmZpZ3VyZSByazgwOC1jbGtvdXQyIGZ1bmN0aW9uCi0tLS0tIGh0
dHBzOi8vY29kZWJlcmcub3JnL21lZ2kvbGludXgvY29tbWl0Lzc1YmU5NmZhZjkzOTUwNGQwZmQ1
MTEyODQ2ZTczZTQzNzU3M2Y3MTYKCmFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgbW9kZW0gdG8g
dGhlIFBpbmVwaG9uZSBQcm8KLSBhcm02NDogZHRzOiByazMzOTktcGluZXBob25lLXBybzogQWRk
IDVWIHBvd2VyIHN1cHBseQotLS0tLSBodHRwczovL2NvZGViZXJnLm9yZy9tZWdpL2xpbnV4L2Nv
bW1pdC84MDhlN2NkYWYzZWQKLSBhcm02NDogZHRzOiByazMzOTktcGluZXBob25lLXBybzogQWRk
IG1vZGVtIHN1cHBvcnQgCi0tLS0tIGh0dHBzOi8vY29kZWJlcmcub3JnL21lZ2kvbGludXgvY29t
bWl0LzhmN2UzNDY0Ci0gYXJtNjQ6IGR0czogcmszMzk5LXBpbmVwaG9uZS1wcm86IENoYW5nZSBt
b2RlbSBjb2RlYyBzYW1wbGVyYXRlIHRvIDE2a0h6Ci0tLS0tIGh0dHBzOi8vY29kZWJlcmcub3Jn
L21lZ2kvbGludXgvY29tbWl0LzNiZWE1MzUKLSBhcm02NDogZHRzOiByazMzOTktcGluZXBob25l
LXBybzogUmVtb3ZlIG1vZGVtIG5vZGUKLS0tLS0gaHR0cHM6Ly9naXRsYWIuY29tL3BpbmU2NC1v
cmcvbGludXgvLS9jb21taXQvZjlmODQ3YzZmZDEKCkkndmUgYWxzbyBpbmNsdWRlZCBhIHNob3J0
IGd1aWRlIG9uIGhvdyB0byB0ZXN0IHRoZXNlIHBhdGNoZXMuIFRoaXMKZ2VuZXJhbGx5IGZvbGxv
d3MgdGhpcyBwYWdlOgpodHRwczovL3dpa2kucG9zdG1hcmtldG9zLm9yZy93aWtpL1BJTkU2NF9Q
aW5lUGhvbmVfUHJvXyhwaW5lNjQtcGluZXBob25lcHJvKQoKVG8gdGVzdCwgcGxlYXNlIGZvbGxv
dyB0aGUgZm9sbG93aW5nIHN0ZXBzOgovLyBGb2xsb3cgcG1ib290c3RyYXAgaW5zdGFsbGF0aW9u
IGluc3RydWN0aW9uczoKLy8gICBodHRwczovL2RvY3MucG9zdG1hcmtldG9zLm9yZy9wbWJvb3Rz
dHJhcC9tYWluL2luc3RhbGxhdGlvbi5odG1sCi8vIE5leHQsIGZvbGxvdyB0aGUgaW5zdHJ1Y3Rp
b25zIGhlcmUgdG8gcHV0IHRoZSBQaW5lcGhvbmUgUHJvIGludG8gVVNCIE1hc3MgU3RvcmFnZSBt
b2RlOgovLyAgIGh0dHBzOi8vd2lraS5wb3N0bWFya2V0b3Mub3JnL3dpa2kvUElORTY0X1BpbmVQ
aG9uZV9Qcm9fKHBpbmU2NC1waW5lcGhvbmVwcm8pI0ludGVybmFsX3N0b3JhZ2VfKGVNTUMpCmNk
IC90by9saW51eC9kaXJlY3Rvcnkvd2l0aC90aGVzZS9wYXRjaGVzL29uL3RvcAovLyBJIHR5cGlj
YWxseSBjaG9vc2UgUGhvc2guIERlZmF1bHRzIHNob3VsZCB3b3JrCnBtYm9vdHN0cmFwIGluaXQK
d2dldCBodHRwczovL2dpdGxhYi5wb3N0bWFya2V0b3Mub3JnL3Bvc3RtYXJrZXRPUy9wbWFwb3J0
cy8tL3Jhdy9tYXN0ZXIvZGV2aWNlL2NvbW11bml0eS9saW51eC1waW5lNjQtcGluZXBob25lcHJv
L2NvbmZpZy1waW5lNjQtcGluZXBob25lcHJvLmFhcmNoNjQgLU8gYXJjaC9hcm02NC9jb25maWdz
L29yYW5nZXBpX2RlZmNvbmZpZwptYWtlIExMVk09MSBDQz0iY2NhY2hlIGNsYW5nIiBPPS5vdXRw
dXQgQVJDSD1hcm02NCAtaiAkKG5wcm9jKSBXPTEgb3JhbmdlcGlfZGVmY29uZmlnIGFsbApwbWJv
b3RzdHJhcCBidWlsZCAtLWVudmtlcm5lbCBsaW51eC1waW5lNjQtcGluZXBob25lcHJvCnBtYm9v
dHN0cmFwIGJ1aWxkIC0tZm9yY2UgZGV2aWNlLXBpbmU2NC1waW5lcGhvbmVwcm8KLy8gQ2hhbmdl
IC9kZXYvc2RYIGFwcHJvcHJpYXRlbHkKcG1ib290c3RyYXAgaW5zdGFsbCAtLXNkY2FyZD0vZGV2
L3NkWAovLyBDbGVhbnVwIGV2ZXJ5dGhpbmcKcG1ib290c3RyYXAgLXkgemFwIC1hCgpTaWduZWQt
b2ZmLWJ5OiBSdWRyYWtzaGEgR3VwdGEgPGd1cHRhcnVkQGdtYWlsLmNvbT4KLS0tCkthbWlsIFRy
emNpxYRza2kgKDEpOgogICAgICBtZmQ6IHJrOHh4LWNvcmU6IENvbmZpZ3VyZSBgcms4MDgtY2xr
b3V0MmAgZnVuY3Rpb24KCk9uZHJlaiBKaXJtYW4gKDEpOgogICAgICBhcm02NDogZHRzOiByb2Nr
Y2hpcDogUmVtb3ZlIGludGVycnVwdCBHUElPIGZvciBXaUZpIGZvciB0aGUgUGluZXBob25lIFBy
bwoKUnVkcmFrc2hhIEd1cHRhICgxKToKICAgICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBt
b2RlbSB0byB0aGUgUGluZXBob25lIFBybwoKIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkt
cGluZXBob25lLXByby5kdHMgICAgIHwgODYgKysrKysrKysrKysrKysrKysrKysrLQogZHJpdmVy
cy9tZmQvcms4eHgtY29yZS5jICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMSArCiBpbmNs
dWRlL2xpbnV4L21mZC9yazgwOC5oICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAyICsKIDMg
ZmlsZXMgY2hhbmdlZCwgODYgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKLS0tCmJhc2Ut
Y29tbWl0OiBkMGUzMDUzMDFlODI0NzQyMjNiZjI2MTg1ZTg2ZTdkYzJlYjg1MzUwCmNoYW5nZS1p
ZDogMjAyNjAxMTItcHBwX2Nvbm5lY3Rpdml0eS01ZWRkZGQ3YjQ5MDQKcHJlcmVxdWlzaXRlLW1l
c3NhZ2UtaWQ6IDwyMDI1MTIyNS1wcHBfbGlnaHRfYWNjZWxfbWFnX3ZvbC1kb3duLXY2LTAtOGM3
OWE0ZTg3MDAxQGdtYWlsLmNvbT4KcHJlcmVxdWlzaXRlLXBhdGNoLWlkOiA4YjMyZGUxNmVkZmZj
OWY4MWQyOTllNDAxMDdjOTU5MDhlYWQ2YTgxCnByZXJlcXVpc2l0ZS1wYXRjaC1pZDogNzcxNGFh
MGQwNjVlYTliYzU4YThmZTY3ZjA0ZDczODE1Mzc1MjIyMQoKQmVzdCByZWdhcmRzLAotLSAKUnVk
cmFrc2hhIEd1cHRhIDxndXB0YXJ1ZEBnbWFpbC5jb20+CgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
