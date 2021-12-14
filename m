Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78DF6C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Dec 2021 08:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hPv3/LBxRAOuZAApUQ/cwYQsLegMwdXK1TbHjZ04Olg=; b=NbYGL4f/DWT7BN
	L/vYTii18yceb6oDaq2vVnM1N2I0LCY+yleXIFOunRsy51owY4hvYA/x4cCZaNF5DIwXvxaZZk2XT
	2erHzzatXAut17kElkgS88ACdTOM+cr6XMDYIXYnOPeOE5qJtMe6hnMWY5LScqj5nfUIcQELIHtEu
	Dd1Q1nPuogEsrxeugFRX1+NlB0UHIaJKc27FOeGi5bVW/ndLk1Ua8paefGlb+Ph8U/E4WgctZ4GbN
	RmaKg/vIvYzLvKVzvc4JW/GqyHX/uvHPtyOmMtNMptXo+TbaOxsP5I6+3pQY0nDU7qmaPPX2aecWH
	y4cMAoH9tScoCyjbKrxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mx3Gh-00D2yU-VX; Tue, 14 Dec 2021 08:34:39 +0000
Received: from mail.thebizzie.pl ([192.236.147.111])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mx3Gf-00D2ws-E8
 for linux-rockchip@lists.infradead.org; Tue, 14 Dec 2021 08:34:38 +0000
Received: by mail.thebizzie.pl (Postfix, from userid 1002)
 id 3F2EA1817B0; Tue, 14 Dec 2021 08:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=thebizzie.pl; s=mail;
 t=1639470876; bh=kU+//Lu71IqgcFfjayWXuIc0mZtoyrYJc2YuqyU8eS8=;
 h=Date:From:To:Subject:From;
 b=fOi8BMgfov4fGZZP6jm2h1ZfavOzyTVVQiNL9AN+HDn3YkS+PsPMNn6XqgGlMvUKc
 Zgebh6glXB2q2LGQQazdy3bjWzX4F7HQyUv4ygTusZwEGjEI+bXJnYN9ij6SCe8vY+
 NqHeYvOPziNMa58HOpURx0dijZ7k89t8/BxB+XGp0iXdorjI+0/6DHG8ZevcEaOe2E
 FW8lZN3uUm90U5AR1kDNejqZ5n1puK/ZWf6nmxMh6DTSNR8YfMT1JEUMreDb3F5oVl
 t45v3juBL0mI83Tm1xRzR6Xo5oO7oaoKk4/NUye7l2MpftLALe+Xl0HNuWm3J7PyCL
 dmp2juTA81zag==
Received: by mail.thebizzie.pl for <linux-rockchip@lists.infradead.org>;
 Tue, 14 Dec 2021 08:32:04 GMT
Message-ID: <20211214074500-0.1.7.30k.0.d3ikda8s4g@thebizzie.pl>
Date: Tue, 14 Dec 2021 08:32:04 GMT
From: "Mateusz Adamczyk" <mateusz.adamczyk@thebizzie.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Wycena paneli fotowoltaicznych
X-Mailer: mail.thebizzie.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211214_003437_633290_90B57418 
X-CRM114-Status: UNSURE (   1.34  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

RHppZcWEIGRvYnJ5LAoKZG9zdHJ6ZWdhbSBtb8W8bGl3b8WbxIcgd3Nww7PFgnByYWN5IHogUGHF
hHN0d2EgZmlybcSFLgoKxZp3aWFkY3p5bXkga29tcGxla3Nvd8SFIG9ic8WCdWfEmSBpbndlc3R5
Y2ppIHcgZm90b3dvbHRhaWvEmSwga3TDs3JhIG9ibmnFvGEga29zenR5IGVuZXJnaWkgZWxla3Ry
eWN6bmVqIG5hd2V0IG8gOTAlLgoKQ3p5IHPEhSBQYcWEc3R3byB6YWludGVyZXNvd2FuaSB3ZXJ5
ZmlrYWNqxIUgd3N0xJlwbnljaCBwcm9wb3p5Y2ppPwoKClBvemRyYXdpYW0sCk1hdGV1c3ogQWRh
bWN6eWsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
