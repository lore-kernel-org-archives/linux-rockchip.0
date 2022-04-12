Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECB25C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Apr 2022 08:00:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uIucbOc1ijuHG8He50j+og5ara0jzwHZh78eb6wdX9Q=; b=qC6HA7GPZFj1zF
	ojTg1wobWN1b+8lOEknToDCDPbCs8+wME1VF7ih/fUFpDn4OYaaIhikKALyk+zlKJlTIZNxfg053i
	Qf5VJcvQpC6SmDG4GrVP7y/AU5GFxtJZkGCS7OQLP0n98+S2LtwJbJAbrj7faNL8Y05E1jqpBf/57
	sM4igZGse/yX0zRWWM12yrZ8XjWOwqMAX7RSNq5hB2sEYXNk730dPwQvUY+k8mbQYRRmLgXxwADmz
	FvnnPgFveR3pZFusvbZYxogNOsiC9Ys9j7YO6Za2Ky2WAACToK4XaygGEnAFgCyCI9tZ58niJEQT8
	W1pUqiVEGIYWR1dbq9Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neBRw-00CPVm-FS; Tue, 12 Apr 2022 08:00:32 +0000
Received: from mail.growthmindset24.pl ([212.237.36.120])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neBOL-00CNQb-0R
 for linux-rockchip@lists.infradead.org; Tue, 12 Apr 2022 07:56:50 +0000
Received: by mail.growthmindset24.pl (Postfix, from userid 1001)
 id 87E2188041; Tue, 12 Apr 2022 08:56:23 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=growthmindset24.pl;
 s=mail; t=1649750207;
 bh=FDuFY3XQoq0gMX1b2gxgT7Py2p4Sxl0PJZYZ4NVaPho=;
 h=Date:From:To:Subject:From;
 b=m7zpFtYqAss4f6PUTYcJDakoGq3hZWgvhQlkXn9W6UpIdqxsvD0cYQ2yCqrB9m0XM
 olxVZMoBXC6hsgCSAKgnaGsVg55Hsm3oR6sJ6vTZDjCaFUGJdDCE7jWmaWrkS/nD0M
 u4Oa8zxyuF3E/xiq1CxRvUyWmgmC1JJ9G83FOmLPc0kJauwlLENy97j0cfGt9VZI+2
 v/7mxD1ESt6v1N+TwC7lalGVKF2cDkDURX3XCZGuruRXKMBcQX792Vz4HC7fyBh4YP
 T2ddsJSR8zDcLMI+20FlxyNFcrHnKF8RnI1Tm4RLV/aueNDyNBD5PNp4grLn24Hyqp
 /B1bSuLfUyT9g==
Received: by mail.growthmindset24.pl for <linux-rockchip@lists.infradead.org>;
 Tue, 12 Apr 2022 07:56:00 GMT
Message-ID: <20220412073001-0.1.2w.d876.0.896e8ge8fq@growthmindset24.pl>
Date: Tue, 12 Apr 2022 07:56:00 GMT
From: =?UTF-8?Q?"Przemys=C5=82aw_Wr=C3=B3blewski"?=
 <przemyslaw.wroblewski@growthmindset24.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Wycena paneli fotowoltaicznych
X-Mailer: mail.growthmindset24.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_005649_224372_C83F1138 
X-CRM114-Status: UNSURE (   1.69  )
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
ZmlrYWNqxIUgd3N0xJlwbnljaCBwcm9wb3p5Y2ppPwoKClBvemRyYXdpYW0sClByemVteXPFgmF3
IFdyw7NibGV3c2tpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
