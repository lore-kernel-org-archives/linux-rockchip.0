Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9186AC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jan 2022 09:46:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ei3NGXDeK6lN44nuM8JHEkipFKgFGJGx+DfuBj5MYfM=; b=gRde3kCKCoVMA1
	p8mFN2G0kv9C/se6xC/67pNEa99afFaGBDgt99I9O4tWfLyTEL7aAR+mxnZN9BnV/+QRKjoeYcaDh
	5Ed2LRItgAPWHb74vUZwv0b6wq/fvvFKbUC6dZWNMYpQ+9tIGlX9+ZKxH91saUbv/gdDH26sC9GS2
	ypQa8y18jBXbRWS2j8+c5boOzD9D3fWx0fRHhQvM6eHEw8IDnqjHMH0XXZAVLWxXA/4gMClsKXxhy
	oNjsy3mkFa0HXKPseKuzqQNuNeVXYbDIWoV7ngtID8XSqmRhbda1QqnZ19QfTS8hhwcdJo034s/Ym
	lmCFv707gqP9uBVSPLzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCIOt-007Fuz-VC; Tue, 25 Jan 2022 09:46:08 +0000
Received: from mail.belongsenergy.pl ([185.45.112.191])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCHvR-0073YT-6T
 for linux-rockchip@lists.infradead.org; Tue, 25 Jan 2022 09:15:42 +0000
Received: by mail.belongsenergy.pl (Postfix, from userid 1001)
 id E9E7B26730; Tue, 25 Jan 2022 09:15:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=belongsenergy.pl;
 s=mail; t=1643102139;
 bh=JAEkA4FCBmQ7T7M+WVau75EdqeDf4MEEr9hE2/l61BA=;
 h=Date:From:To:Subject:From;
 b=Bgm/taF0233QbhRdf3xU4teDnknu7kqb7Ka5Kn3dOmWkKBSQucvdgmOv+9mJuQOsv
 RtVElnwzB5DGsWEQNyWKeSqPCFaRpVNvH0RzlrBZI70wR00lW6S13dk5eD01hZbWP+
 0XxiclQ+LRwhvPLsDLRIOJJ02w4YmGofRCZ4cdjWMJ5C5PncvZnAG87OdotSnwELAa
 gC47NXJSYfjLCmtjAww9evUse/5o2MhBXdHCuQqQnnZLacOR9lPVDEtT9elHHm3iYd
 o47wyE5BfIAhzW9YdZ3GcgSzlsD/OTc5KfBgBKoQuiIJV5XI6p5a8HL4yxLPkfvfPK
 Mx5N7frbjJoZw==
Received: by mail.belongsenergy.pl for <linux-rockchip@lists.infradead.org>;
 Tue, 25 Jan 2022 09:15:27 GMT
Message-ID: <20220125074500-0.1.7.2zu.0.r8fncd47d3@belongsenergy.pl>
Date: Tue, 25 Jan 2022 09:15:27 GMT
From: "Maciej Nitycz" <maciej.nitycz@belongsenergy.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Wycena paneli fotowoltaicznych
X-Mailer: mail.belongsenergy.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220125_011541_414383_83497740 
X-CRM114-Status: UNSURE (   1.72  )
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
ZmlrYWNqxIUgd3N0xJlwbnljaCBwcm9wb3p5Y2ppPwoKClBvemRyYXdpYW0sCk1hY2llaiBOaXR5
Y3oKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
