Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97394C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Mar 2022 08:41:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q54Q1ZKD2FEI89JO1m7uumOafB62cYJdAHOoWYCVfY8=; b=jcfYd6vQ0qbPnH
	5SMzCBqnYc1/AOK6cIsQPNi69OiROwKK+5vO28tAERshDaknc4qxgrkJwukxrD8oN3uD9bx6ahkNO
	xsqM1QfYeVhMf4qMBfxC0PPYVnNJxyyhCegBeobccLEU1LG6DcMUjlNeuokMNHk0lJigBvqWtbEgk
	skeCekZK/cBujq6GIAFBoBW+NnHDWipkm0j7b6lHXYYjQCqap4ZxXILgDR6JrzPu3UMusL89LmIqA
	ofsO9YehnrTHO3ZYs9C/28LHkGLLP0j9WoqNRoOryxciS/ZaxkIG9jlXqhxcjVvfH2NSqU2pb4fyd
	Sz0o2pqJvUiFfpXKSpNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nV8Ab-000qn9-UI; Fri, 18 Mar 2022 08:41:13 +0000
Received: from mail.postform.pl ([195.231.64.18])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nV8AY-000qlY-AT
 for linux-rockchip@lists.infradead.org; Fri, 18 Mar 2022 08:41:11 +0000
Received: by mail.postform.pl (Postfix, from userid 1001)
 id 5B3E2AACB8; Fri, 18 Mar 2022 08:37:47 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=postform.pl; s=mail;
 t=1647592747; bh=Cp7iEcBs6UYsUZoqwaSKv66JiG6VJnuY7Lx3D9vYwU4=;
 h=Date:From:To:Subject:From;
 b=d49wRF3sZ34dZjLyP1tu3wUle4Y58pFsmProAmKhVlOv2sCObGD98LuTxHNTKe8Dq
 1bQMBh3DEAm1bqIG/rark+5/zzxPV6288wsISRfq+P/tFbKP6Dj4kJeqtR+nURk/UO
 rm9qV/rSc3lQ8AS8iGr/j/CJ4qIgMN9BijYxWB9731sxgQRH6JBCsfRI+TDt7ux+a/
 /dQSfIuiuZpp0wBMRfGKYVCGDLFpyaDAamjNZ204MxuSOo9k/YqiEz3hdvdHa+ulMd
 Ab+9ZHbgio9a+TOFrrqKIYTwxU1m/JE3xrBRW1tIBo93bZVBLOo2XiuHbjffBxjhPK
 nEkzUcH929hLQ==
Received: by mail.postform.pl for <linux-rockchip@lists.infradead.org>;
 Fri, 18 Mar 2022 08:36:44 GMT
Message-ID: <20220318074502-0.1.1i.jnyg.0.d4w58df7ib@postform.pl>
Date: Fri, 18 Mar 2022 08:36:44 GMT
From: "Norbert Karecki" <norbert.karecki@postform.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Wycena paneli fotowoltaicznych
X-Mailer: mail.postform.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220318_014110_570693_32CCB895 
X-CRM114-Status: UNSURE (   1.39  )
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
ZmlrYWNqxIUgd3N0xJlwbnljaCBwcm9wb3p5Y2ppPwoKClBvemRyYXdpYW0KTm9yYmVydCBLYXJl
Y2tpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
