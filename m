Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 719D7EE0218
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Sep 2023 07:30:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xYidZCICL2vpFOuN3DaOAO42X6BbByh2yr+Ql9mwK3A=; b=OjllqwoHaH/edC
	0f8aiyOUT0Q6Iqsah9IYP2sY3sqs5uCm36EWKtpBHSbPwIxHJ5nOBPTXfSeN4g6vgkQpzydF4dheV
	r9iAbSgvjvQGghHDjuVhn1/9LDXhTkykSi/0Vo3PpwjypSPNh9KYP9uL/F5oKTBfDHr1EW5bJj963
	uGxT/1BGIuATdFqVqo+4xYgvaY5MFHnnx2CVqRt+dgJJUiwsaQnTUT679fXJF70txT9U791480ZgZ
	CcFpw0ZHNyLKvkkVFvVs2iGp5t9j7Au3jBz86AUA75XYyzjtoLb7bjEAYPfpzqdUPztE/jyRT8lV5
	gAME3OMFbaYdqReBp0MQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiVBv-00HElH-2F;
	Tue, 19 Sep 2023 07:30:39 +0000
Received: from mail.leeswilly.pl ([89.116.26.225])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiVBr-00HEjQ-2t
	for linux-rockchip@lists.infradead.org;
	Tue, 19 Sep 2023 07:30:38 +0000
Received: by mail.leeswilly.pl (Postfix, from userid 1001)
	id D0A05761316; Tue, 19 Sep 2023 09:30:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=leeswilly.pl; s=mail;
	t=1695108631; bh=qCQG4c3C0tvkuSSy6okg6Td4OKi9mrw7rI9pE9SwJ9g=;
	h=Date:From:To:Subject:From;
	b=nAMUyt/6gTb/addJ0vNnG10nEIo+KZRkOWtpmGKWIEhx8CCLqqXg7EbbpR63ombx2
	 z13W638BUuID0sNxNFyMJ83a8j/w0QOgvh8HZM3Nk0IC/L5LIk+e6O8XUi3RsKkRox
	 6fdYMmJt8SA8BXFN3J87aVM7vm5Tnv9tkrWRw/CPF4OrQZVGc51XhynyZlsjTGoHGD
	 vSSxt14iUuaIJioUz7CIiwAugLC0dFAH8WNVJSlnJ7cLV8TpH/SWF1crRaumZkOGfA
	 OeydzYXit+RlEiRxO9pCSzfFd4JZt5hb49O63CE/vpN9du/CVwCmhNUbz70imOCInF
	 2l7kmj8gMjCaA==
Received: by mail.leeswilly.pl for <linux-rockchip@lists.infradead.org>; Tue, 19 Sep 2023 07:30:18 GMT
Message-ID: <20230919084500-0.1.3z.bbjd.0.fo3q93gmfo@leeswilly.pl>
Date: Tue, 19 Sep 2023 07:30:18 GMT
From: "Jakub Lemczak" <jakub.lemczak@leeswilly.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Pytanie_o_samoch=C3=B3d?=
X-Mailer: mail.leeswilly.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230919_003036_681946_A2F4DE66 
X-CRM114-Status: UNSURE (   1.37  )
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

RHppZcWEIGRvYnJ5LAoKQ3p5IGludGVyZXN1amUgUGHFhHN0d2Egcm96d2nEhXphbmllIHVtb8W8
bGl3aWFqxIVjZSBtb25pdG9yb3dhbmllIHNhbW9jaG9kw7N3IGZpcm1vd3ljaCBvcmF6IG9wdHlt
YWxpemFjasSZIGtvc3p0w7N3IGljaCB1dHJ6eW1hbmlhPyAKCgpQb3pkcmF3aWFtCkpha3ViIExl
bWN6YWsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
