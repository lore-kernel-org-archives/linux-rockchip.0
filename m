Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E58F9C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 07:41:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2fcgD7I2tHIVsU9QXZXKAwzqgU+6IQI/2EDv/39M108=; b=2x5n0kcxYMlKor
	KEdKlA4v++XtBl13PDMY/hZnuNeYLhIsq/6bmZPCizVaHQk6hB3G30hWqsuXrtEuX7QXnp2G2ak+y
	5IibuV9K+cAddbCjUEZ8xF6I135Zt2RAwt99V+oNHlgUmBkXjDLfTKsXDS2w2Sbb8mSOZ9Ecji7Ib
	nKNZZ3K9U6h6B4Z8Ri6cOGHpjuiYT8Gr1ZjSyXuZdK+K0MnjN2myWRFBWM0mjip+G9gFtOxznW/QO
	SMWv5WCVOG3SDo+slgMDhmFoSfTN0Lw6ysyp2qeyr0yVEWBr1AYswuCgHK6KO4dQGDA+GvPTnKjUw
	LTK9yd+BF+DuB4r5nd5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se8cn-00000006636-3pgx;
	Wed, 14 Aug 2024 07:40:53 +0000
Received: from mail.widebizscope.pl ([51.77.245.187])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se8ck-0000000662S-1w1k
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Aug 2024 07:40:52 +0000
Received: by mail.widebizscope.pl (Postfix, from userid 1002)
	id 687C124433; Wed, 14 Aug 2024 09:40:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=widebizscope.pl;
	s=mail; t=1723621246;
	bh=7b2Hseb9QY/049WYSH5jOQc1GsDAtRo2MBj6O2PAhWg=;
	h=Date:From:To:Subject:From;
	b=SD9X5qKRf0fQ7HmBESjr925JRNfNf/TiaGwCXp3e0L/fQQvPcMgcaWjz15604b1eR
	 xL0cvBhj9dqA+a5qqd2QwpCci6czuNdPs8BKUjiWCOoXd/ArqRZBUik139qqNLW6rN
	 zqcPsXYshLzsYJrylb671ceCBmkbSPbiRjnC/rJ/k18JE509nCKrmO8w4MstaDty2b
	 nJAmRxhbT0feRJbaYoOQEQl5HctEwHswvkqY1Ad6zxB6kCQWXLmub0BSfJr64/bekW
	 Y2+UQzu1hX5v1B8JH/I4EZNnSaHXfHD6jc+dwJDvTZynWQhdbnmVZh3ZZXJfm7D09d
	 WFHwtPl8DhuIg==
Received: by mail.widebizscope.pl for <linux-rockchip@lists.infradead.org>; Wed, 14 Aug 2024 07:40:39 GMT
Message-ID: <20240814084500-0.1.d3.rog6.0.fj8hv267s4@widebizscope.pl>
Date: Wed, 14 Aug 2024 07:40:39 GMT
From: "Szczepan Andryszczuk" <szczepan.andryszczuk@widebizscope.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Faktury
X-Mailer: mail.widebizscope.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_004051_193716_F05A061D 
X-CRM114-Status: UNSURE (   0.31  )
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

U3phbm93bmkgUGHFhHN0d28sCgpDenkgem1hZ2FqxIUgc2nEmSBQYcWEc3R3byB6IHByb2JsZW1h
bWkgcMWCeW5ub8WbY2kgZmluYW5zb3dlaiB3eW5pa2FqxIVjeW1pIHogZMWCdWdpY2ggdGVybWlu
w7N3IHDFgmF0bm/Fm2NpIG9kIGtsaWVudMOzdz8gCgpOYXN6ZSB1c8WCdWdpIGZha3RvcmluZ293
ZSBtb2fEhSBiecSHIHJvendpxIV6YW5pZW0sIGt0w7NyZWdvIHBvdHJ6ZWJ1amUgUGHFhHN0d2Eg
ZmlybWEsIGFieSBzenliY2llaiB6YW1pZW5pYcSHIHd5c3Rhd2lvbmUgZmFrdHVyeSBuYSBnb3TD
s3drxJkuCgpKZcWbbGkgemFsZcW8eSBQYcWEc3R3dSBuYSBuYXR5Y2htaWFzdG93eW0gZG9zdMSZ
cGllIGRvIMWbcm9ka8OzdyBmaW5hbnNvd3ljaCBwbyB3eXN0YXdpZW5pdSBmYWt0dXJ5LCB6YXBy
YXN6YW0gZG8ga29udGFrdHUuCgoKUG96ZHJhd2lhbQpTemN6ZXBhbiBBbmRyeXN6Y3p1awoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
