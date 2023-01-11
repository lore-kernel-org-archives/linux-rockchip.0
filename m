Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E33C3C6379F
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jan 2023 10:32:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tyzcm8/6OgohFnpztkRmJJpmkdfAsUDrPsDRhDNAFyU=; b=b7d3lqrXYUsy0z
	LVV/a7TnYnnO7tS7fFEH27zFHXgaRgqskh6FJwpqRZcPlrgB/rS/Y9EoyZxWD1tq+YeClaeoUB5Hr
	tBuzsh67V/NFiPwcDTUGFu6iJ+u6xuh3Lno3owaHMXdkxiaw7ujZCNimEYVaAmBPu6Wj0wum4HYYo
	7TvkWRUU0RyRZ3KCtag0zHcngFooC22IowSYsfiXBzaykoLY/fCdQz/k9x7O++2+/YRLAxg2I38Ql
	sSChbc7S5XBvFuYAIstdZutrq/9HdRZ5hfSDqxRH9zJe3ieBE5X4hlXY0EcuLShCt5GsuTeQgpuwt
	M7G/Pq4oT+b9ZXXRwhTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFYOq-00AocW-Vk; Wed, 11 Jan 2023 10:32:04 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFYOd-00AoXg-Ip
	for linux-rockchip@lists.infradead.org; Wed, 11 Jan 2023 10:31:53 +0000
Received: by mail-pl1-x62f.google.com with SMTP id v23so11413324plo.1
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Jan 2023 02:31:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pbCjuNspk1al6KyeSMCpiDYLocT3y4oyShnLOrnIobk=;
        b=SA/AnQngW28uW8cyiy4bkf6Q9VLPOl9WDrVT6zxefMD7erV8WWM+RVtbMGT8dghZ5E
         rrqcUYDtIq08v47pSJ81Rb8XUgBm5mDRhZf6bUNxdKD59d8FarS2JpXBfkxBuZb/RrFq
         /CXmrOoGmK4CfGR0mkKamPrwfLsohcRx4kuqRVtiRg8+k7MhGkZxkMLoNRscY4ICPnl+
         RM4H4SBnbVbRC9/CJOAE5t4PkIxR5JzF3uI0hTkpMnteyQJb37kop+CnPjm3WUmkvoxc
         23ijpbxAAvBWinQBzMDr0G6tjD3rPnNWelCrz6Kzc/ov4sDyCB79oFuFM/b+qyZysEgN
         cDjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pbCjuNspk1al6KyeSMCpiDYLocT3y4oyShnLOrnIobk=;
        b=vvAIN1YK4mkI2VsMM1XVGlM1fiQBdlEMw0wjI1v+axup5M/vryxMxbWa3BYswh+mvD
         TqOnDqw4mF1HaQ9/+xKn5JUAtE8+Rz5rz0/b3OwBCJoFhpe/WsYHuP4Iytex7Mq7U6Rg
         nVG7yjNafOmUehdYwszYi9uHCcfGuQUKa0R6uDEsiaur40N9xelNq0UEw/AHcCYyuxlO
         bK3yRSVUU4xgK5M3x9kP/jmyq4Pu/pKheOw31KJ8/p80nmxLGykth31jV8PXRkP0/sRb
         bGQq/26IAXsUG526hJWerHN0PvDKF5pi3UlbP5E+MWrSjlQ4Ck8hpXewb4IKLcR/Yh8p
         CdVw==
X-Gm-Message-State: AFqh2kpvsMuegyYppfT7uV0EcZq/A5UdnFERWax4cObjrcj6e3k7q1ie
	pnzkVUHMK5EtEGTHk6zTQg9+91vfeKsNISrhthYnSg==
X-Google-Smtp-Source: AMrXdXtFk5l0il1vA3D+6OgvWOK+kBZNBUEtPjjmJsNLGg++mQ6QqV+817kYVWm+pB94z3yk9jPRVWYAdUEqKa58Kkc=
X-Received: by 2002:a17:903:22c2:b0:189:b4ed:56a1 with SMTP id
 y2-20020a17090322c200b00189b4ed56a1mr4345123plg.62.1673433110105; Wed, 11 Jan
 2023 02:31:50 -0800 (PST)
MIME-Version: 1.0
References: <20230111064842.5322-1-anand@edgeble.ai> <20230111064842.5322-3-anand@edgeble.ai>
 <7148963.18pcnM708K@diego>
In-Reply-To: <7148963.18pcnM708K@diego>
From: Anand Moon <anand@edgeble.ai>
Date: Wed, 11 Jan 2023 16:01:40 +0530
Message-ID: <CACF1qnd=o+QWuofgAb+YXOs1R_dOuCPxWrb-+YEhuN4z8OnTrA@mail.gmail.com>
Subject: Re: [PATCHv4 linux-next 3/4] Rockchip RV1126 has GMAC 10/100/1000M
 ethernet controller
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Richard Cochran <richardcochran@gmail.com>, Johan Jonker <jbx6244@gmail.com>, 
	Jagan Teki <jagan@edgeble.ai>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_023151_853775_50060168 
X-CRM114-Status: GOOD (  14.44  )
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

SGkgSGVpa28sCgpUaGFua3MgZm9yIHlvdXIgcmV2aWV3IGNvbW1lbnRzLgoKT24gV2VkLCAxMSBK
YW4gMjAyMyBhdCAxNTo0MSwgSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JvdGU6
Cj4KPiBIaSwKPgo+IEFtIE1pdHR3b2NoLCAxMS4gSmFudWFyIDIwMjMsIDA3OjQ4OjM4IENFVCBz
Y2hyaWViIEFuYW5kIE1vb246Cj4gPiBBZGQgRXRoZXJuZXQgR01BQyBub2RlIGZvciBSVjExMjYg
U29DLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEFuYW5kIE1vb24gPGFuYW5kQGVkZ2VibGUuYWk+
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBlZGdlYmxlLmFpPgo+Cj4gcGF0
Y2hlcyAyLTQgaGF2ZSB0aGlzIFNpZ25lZC1vZmYtYnkgZnJvbSBKYWdhbiBhZ2FpbiB3aGVyZSBo
ZSBpcyBub3QKPiBub3QgdGhlIGF1dGhvciBidXQgYWxzbyBub3QgdGhlIHNlbmRlci4KCldlIGJv
dGggd29yayB0byBmaXggdGhpcyBwYXRjaCBoZW5jZSBKYWdhbidzIFNvQiB3YXMgYWRkZWQuCj4K
PiBBbHNvIHRoaXMgcGF0Y2ggaGVyZSwgbmVlZHMgYSBmaXhlZCBzdWJqZWN0IHdpdGggdGhlIGNv
cnJlY3QgcHJlZml4ZXMuCj4KT2ssIHdpbGwgZml4IHRoaXMgaW4gdGhlIG5leHQgdmVyc2lvbi4K
Pgo+IEhlaWtvCj4KPiA+IC0tLQo+ID4gdjQ6IHNvcnQgdGhlIG5vZGUgYXMgcmVnIGFkZHMuIHVw
ZGF0ZSB0aGUgY29tbWl0IG1lc3NhZ2UuCj4gPiB2MzogZHJvcCB0aGUgZ21hY19jbGtpbl9tMCAm
IGdtYWNfY2xraW5fbTEgZml4IGNsb2NrIG5vZGUgd2hpY2ggYXJlIG5vdAo+ID4gICAgIHVzZWQs
IEFkZCBTb0Igb2YgSmFnYW4gVGVraS4KPiA+IHYyOiBkcm9wIFNvQiBvZiBKYWdhbiBUZWtpLgoK
VGhhbmtzCi1BbmFuZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
