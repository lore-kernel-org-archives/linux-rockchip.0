Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8CD1D3EE6A
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jan 2026 14:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UxSMnNcLT5CxvnArNhbnhG+aVv8di3RQibVfM0CZDBc=; b=ViY28349eCP1/E
	5xO6Yqfk90LET3BsaojaNZiCORix/911TtE3AlNndpvEI5Us7XXnNAGdDyYDlqB0eLs0/HSBRZM4c
	XKO/z0VITwKT3bg+jt1Hvw6Gxx1jvAcbVPGEUypjt7bAMhLYFAB7rsJE69iCaL/Z5VGu7uX/3AZbw
	kDQP64nRTpEyUi5SW6HttJ7krdehUwDunKZxIEj/EyM6ytx2+tejLPekDiWbbe736qofQ/dKHe9eY
	wRqzfN+CevtS+xaJdpzOdDjbTV6EovlnqnpIoQuT63kfrr8CjOvFPK4z267dtoOCcHqsKCRI6YvZs
	4vOdtuN/Gz4cZrkgZSmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vivQQ-00000007D3C-0oDv;
	Thu, 22 Jan 2026 14:12:42 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vivQO-00000007D2m-2HvZ;
	Thu, 22 Jan 2026 14:12:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9720C60053;
	Thu, 22 Jan 2026 14:12:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8684C116C6;
	Thu, 22 Jan 2026 14:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769091159;
	bh=ymxs9hipH3MSqO+EtSgebsTWpLkwdhKqEdneib0tRSw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hODvGDmjEMpnNSE/AOUDtxnF6/OV7V6piVNP+5RR6/2HKcDHe28W+kp/NIv49sT+l
	 tosLBcyWDzhINlcaAedBwHLjIjWvKMCcC0Q6zqDTcFtBD3Nk1BTAKeLBJJXpSUKvQ+
	 ykQ9RFg405pb7DpzxmcP8ghnnvrHQIimvJtQjdhcfzYWeXZ6Wk4AHQjwJAlrXU9Sgf
	 O5EROBbioRHV3gtjEClqORtd+8ZPT/38sBn2oubpmMEfgnyK2m+CbnZVRbqnHMMsQn
	 VUXeNEE7zkq4E60i+HnVAjz6HeHdC5f+NhuXURm11BGSUCX9MJlCkxQXgSKExzJMPw
	 H7NgjxCWRG8lg==
Date: Thu, 22 Jan 2026 14:12:33 +0000
From: Lee Jones <lee@kernel.org>
To: Joseph Chen <chenjh@rock-chips.com>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [GIT PULL] Immutable branch between MFD and Regulator due for the
 v6.20 merge window
Message-ID: <20260122141233.GJ3831112@google.com>
References: <20260112124351.17707-1-chenjh@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260112124351.17707-1-chenjh@rock-chips.com>
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

RW5qb3khCgpUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IDhmMGI0Y2NlNDQ4MWZi
MjI2NTM2OTdjY2VkOGQwZDA0MDI3Y2IxZTg6CgogIExpbnV4IDYuMTktcmMxICgyMDI1LTEyLTE0
IDE2OjA1OjA3ICsxMjAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6
CgogIGdpdDovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9sZWUvbWZk
LmdpdCBpYi1tZmQtcmVndWxhdG9yLXY2LjIwCgpmb3IgeW91IHRvIGZldGNoIGNoYW5nZXMgdXAg
dG8gM2UxMGJiZDljOGE2ZDVkMDE2YjhlNTJjNWQ0Y2ViYTkzYTIzMDRhMDoKCiAgcmVndWxhdG9y
OiByazgwODogQWRkIFJLODAxIHN1cHBvcnQgKDIwMjYtMDEtMjAgMTQ6NTg6MTIgKzAwMDApCgot
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tCkltbXV0YWJsZSBicmFuY2ggYmV0d2VlbiBNRkQgYW5kIFJlZ3VsYXRvciBkdWUgZm9y
IHRoZSB2Ni4yMCBtZXJnZSB3aW5kb3cKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KSm9zZXBoIENoZW4gKDMpOgogICAgICBk
dC1iaW5kaW5nczogbWZkOiBBZGQgcms4MDEgYmluZGluZwogICAgICBtZmQ6IHJrOHh4OiBBZGQg
Uks4MDEgc3VwcG9ydAogICAgICByZWd1bGF0b3I6IHJrODA4OiBBZGQgUks4MDEgc3VwcG9ydAoK
IC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9yb2NrY2hpcCxyazgwMS55YW1sICAgIHwgMTk3
ICsrKysrKysrKysrKysrKysrCiBkcml2ZXJzL21mZC9LY29uZmlnICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICB8ICAgNiArLQogZHJpdmVycy9tZmQvcms4eHgtY29yZS5jICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfCAgODEgKysrKysrKwogZHJpdmVycy9tZmQvcms4eHgtaTJjLmMg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMzMgKystCiBkcml2ZXJzL3JlZ3VsYXRvci9y
azgwOC1yZWd1bGF0b3IuYyAgICAgICAgICAgICAgICB8IDI0MyArKysrKysrKysrKysrKysrKysr
KysKIGluY2x1ZGUvbGludXgvbWZkL3JrODA4LmggICAgICAgICAgICAgICAgICAgICAgICAgIHwg
MTE4ICsrKysrKysrKysKIDYgZmlsZXMgY2hhbmdlZCwgNjc0IGluc2VydGlvbnMoKyksIDQgZGVs
ZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL21mZC9yb2NrY2hpcCxyazgwMS55YW1sCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9d
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
