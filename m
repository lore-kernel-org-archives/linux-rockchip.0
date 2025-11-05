Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A7F0CCFA0D
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Nov 2025 23:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JIqQsVdc0PW1aUVeZO3Bs17q5zC5vLcIqqiCbU9AqLs=; b=0guBC1amgQXyLM
	/k2nUlQCbjQb6XWtEVD/oHCwEuoFe6kwmFJKkX1v/cWGZAOtEpxfXcOgtjTOgE2tYATC8MEkX8ZLg
	uoiKQwuPZv2fwkYZ1RjRFam1evsFMwIwZvCLqnHvIL/6JSBUxvs5QrDAGlZqeLrxHN5Yq8gbFMPpD
	i0SgTzrCMECrmW0Df5BW/MxvF7/azB3hQc32pw0lDWJ0twyo6KO6Ok9diVtrCDJTZrlXFlRos8U4Y
	rNPWy5JM0LdQeLSmxPVobnbzn6djy8zjI8riqlBgS7nEBQai1XoRjZWT5AOL7K5UrZEPUeUO7xeXo
	4V6hQT7OL9yBI9+vdfxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGmwF-0000000Ec9w-2dIX;
	Wed, 05 Nov 2025 23:29:15 +0000
Received: from smtpbg151.qq.com ([18.169.211.239])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGmwC-0000000Ec8x-1eHQ
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Nov 2025 23:29:14 +0000
X-QQ-mid: zesmtpip2t1762385281t50722702
X-QQ-Originating-IP: JXDVC4wEduH/5I2geYS1F/YtQWPEEEzaPCj7cEdTzmY=
Received: from [IPV6:240f:10b:7440:1:4c9d:dff9 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 06 Nov 2025 07:27:58 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 12189542009970870665
Message-ID: <7A636B2C51748041+9013a190-a997-4006-a136-20d18db85763@radxa.com>
Date: Thu, 6 Nov 2025 08:27:58 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/3] Add Radxa CM5 and IO Board
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: heiko@sntech.de, joseph.kogut@gmail.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
 kever.yang@rock-chips.com, quentin.schulz@cherry.de, dsimic@manjaro.org,
 pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251105051335.17652-1-naoki@radxa.com>
 <CALWfF7JsB-i4tgbPfMzrH92dCO-=EMkt7yY16dKzEPE-4RC58A@mail.gmail.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <CALWfF7JsB-i4tgbPfMzrH92dCO-=EMkt7yY16dKzEPE-4RC58A@mail.gmail.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: Of8SBErQAQJCpFYGwRsYOkTT/7Belezxap4heeqqeBoyJips0PHt+xp/
	2sW/01YAL9zGX6MyNpvOY2S7l++kEaQ/bQCaFga6L9vsqqUc+obcTUW4Hg4botpxgJbb/LI
	eDz7Xmnu+5Buhoa0SPpIBkevL8xSqfwH4V0q9nkL6tZNdPQfkCXciwF+G+oSN3RimKaypiW
	VBgXxnMPlefutJRJib+L+DltGuMtcdrKNdQvcnGqkgGmGNi2V5H0FnKvlOi71Mhkp4KGEnj
	XFgblAG9DjUmLZ4ij2tHy9+hUtwzIC02ZGmpTwOMHGhwHmW9ImX8hAb1R6s4IbvU+XlyKgz
	f2whBGuqoFtJQKSYRcbd9O1gKBt1Qr8KPGLRIDG05CeE4LJtxw5xjZYEsVMELJGAaMt6qk4
	06x5Ljs9rBzXvdiL4/aRNCRN5+OZENBM25uVTNvniZwZXFLe40G4AIZpEmtTHJnq6wZR0eO
	2yETdUAonDmXaXllDDkN74yGM4OmpskOlW90mOKjTMJCPQD94cx6zPtJmjTAUeUDVNnJNpo
	OtRHd9zpvnHZDG1xVKlS09YD3ttr98wT9Es0vxbkucBigF8twkhj/FvPqIK/yJwh4WwdigZ
	fXuExnQe2f7t9whVZGtFMXBtiJRtBFlDcpCs8X4WqDvXSkV+7ryHJktVDJ7rtA+xPqyJDgJ
	aGfCRznBLSIyeH9fE5W80T+ADFxrd0cdn9yeHp3BfT09ZXqdBUN9U5NktrRH/qVCGRGNHNp
	SGwMGtLoM+ZJFCW3l+RSf5s+YNaQKDFBCTM+nyucZGKSIt5CkEE/zigy046Fswo91nZpRhF
	T1t9FHrIEzG5d8PXTkyX4jd+cKccIggTDQsQWpmfs+j/CWKHZ151zKOXDgbekT2J9p9Z39y
	TP+xVMv19xKmM1QXE1JtojVXwElkPExq5uDuYbDZz77q1/snb/srqSfkAu9vKBxcEZuwLt3
	wmuQTvvRUXYbaCGK/1iyc4FPjB8aEpbbWV40LFbFmesJzA6fnQCYfASkU+0jJg0SD0yYQQi
	u+rLlNnDq1XzAnaXSGfDaAj0tAwHo=
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_152912_903313_4F180E4D 
X-CRM114-Status: UNSURE (   8.73  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSmltbXksCgpPbiAxMS82LzI1IDAzOjEwLCBKaW1teSBIb24gd3JvdGU6Cj4gT24gVHVlLCBO
b3YgNCwgMjAyNSBhdCAxMToxNOKAr1BNIEZVS0FVTUkgTmFva2kgPG5hb2tpQHJhZHhhLmNvbT4g
d3JvdGU6Cj4+Cj4+IFRoaXMgcGF0Y2ggc2VyaWVzIGFkZCBzdXBwb3J0IGZvciB0aGUgUmFkeGEg
Q001IFNvTSBhbmQgSU8gQm9hcmQuCj4+Cj4+IENoYW5nZXMgaW4gdjY6Cj4+IChQYXRjaCAxLzMp
Cj4+IC0gRml4IGRlc2NyaXB0aW9uOyAiUmFkeGEgQ001IiBpcyB0aGUgY29ycmVjdCBuYW1lCj4+
IChQYXRjaCAyLzMpCj4+IC0gRml4ICNpbmNsdWRlKHMpCj4+IC0gSW5jbHVkZSByazM1ODhzLmR0
c2kKPj4gLSBNb3ZlIGFsaWFzIGZvciBnbWFjMSBmcm9tIGlvIGJvYXJkIGR0cwo+IAo+IEknbSBj
dXJpb3VzIHdoeSB0aGUgYWxpYXMgd2FzIG1vdmVkIHRvIHRoZSBTb00/IElmIHRoZSBjYXJyaWVy
IGJvYXJkCj4gZG9lcyBub3QgZW5hYmxlIHRoZSBnbWFjMSwgc2hvdWxkbid0IHdlIGxlYXZlIG91
dCB0aGUgYWxpYXM/Cj4gaS5lLiBmb3IgdGhlIGhhbmRoZWxkIHdpdGhvdXQgUko0NSBqYWNrIFsx
XSwgaXQgd291bGRuJ3Qgd2FudCB0aGUgYWxpYXMsIHJpZ2h0PwoKSW5kZWVkLgoKQmVzdCByZWdh
cmRzLAoKLS0KRlVLQVVNSSBOYW9raQpSYWR4YSBDb21wdXRlciAoU2hlbnpoZW4pIENvLiwgTHRk
LgoKPiBbMV0gaHR0cHM6Ly9naXRodWIuY29tL1N0b25lZEVkZ2UvUmV0cm8tTGl0ZS1DTTUKPiAK
PiBKaW1teQo+IAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
