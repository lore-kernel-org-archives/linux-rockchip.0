Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80D67D68BF6
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Dec 2025 08:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m4ImZxyeDg6/TwT+VOSviUdK4GemfPhay0WdeZWvpig=; b=lvBwkzLIsUMgGi
	6bLug4XesRqS4C6g0BOn5Btts4f1qiBOmEwqNZakCttme6lsh5tmiIH4w8YcklWMmtRFaL42FSQXV
	3/yTbt47n2665oJwx/C/M9FJa5Ve8T9w+R/ZJEDcKxTWX4VN5I3CPg9vOZ71g6eNAxYkH+EwMhCsn
	nk0lRIE/IeIF7Eb8BmABIq0S4JpGEyUfbgV6Z9ey4R+4UTnWbLtZDnfomoOk3B0BInSh4ukhsBkPf
	0nVmiz+Vnqsfp8Ie3ZxAZsiFAHjBcnyaFPbmEpw4JSh8Y4sJNH13UDOBJnqYvUXYcoTQxDEm1ss1u
	66Gc4igLda9gg0zayIEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW9eK-000000085Ic-1VGd;
	Thu, 18 Dec 2025 08:46:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW9eJ-000000085IB-1D5C
	for linux-rockchip@bombadil.infradead.org;
	Thu, 18 Dec 2025 08:46:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Subject:To:From:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=g+bJVIpt0gfvrKpvvpbdhzaZrLDQ51BQvCd8rNT5zDA=; b=aQkL+kbpTIewt1Brf55jAf/Fc6
	4We2qz2Z2PFcv1xOlM0Ge0kc4xExrd1YWiDo3D7wNeYseTk/y+0upTfU3IHC/avZeu3eiXUqJT9G1
	KE/HRdiq59IKKlYeZsA4lgaCjBDR1t6zTwJ9asZvi6Hjvw6Oq9HnuAcWtGrkAuN/VEyx1jcsZ3C9B
	wBnyowJKrrSaMG22Q8XyCE9RanOIRCbWXBy+iKRYXhg+D9CeJ1eGxRauvVd4WwGhkIQYjUG7II5Ai
	WuWlOQrbR9Adso2g4f3zt7usIJoVDCHhcLLLq06HFFeS44Iv5Onhlx0Go1z84H/uvXfjcxZGyaCBG
	hPyJwy/Q==;
Received: from mail.torqly.pl ([51.38.112.117])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW8mm-00000008Nwv-2xTk
	for linux-rockchip@lists.infradead.org;
	Thu, 18 Dec 2025 07:50:59 +0000
Received: by mail.torqly.pl (Postfix, from userid 1002)
	id B7865A9F3E; Thu, 18 Dec 2025 09:46:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=torqly.pl; s=mail;
	t=1766047567; bh=g+bJVIpt0gfvrKpvvpbdhzaZrLDQ51BQvCd8rNT5zDA=;
	h=Date:From:To:Subject:From;
	b=PbtJi2mFzUikeh9C5efxhVw2SwjwZv7+bYBOYin7N1jWNQKb6UbBWHa6eNJhGR5Xu
	 cp/+NSnah1YjzxjLXjSynQ5684eQtvKtlvZu0h23oYoUL+DpFqzq9PjZIq1RF2Ztnm
	 5M53Na1mfZ8IK/jX+ICs8RZVFUOAkiUlqSr+Zx1MwnL99D2Kj3i3Ul8R4QLGKwOANO
	 K4uZuibPQ6ZVb/cuOY8QshMVU4XpT9C+RqFASz5rrLnHDbJ1ZLRy7KDsjP/kC3n2bk
	 jvRx971+n722nEyNJz4Za8g2s/N+NnS/Xjomy1D4EthlzB8tdZvrYN1HD8Au7W09q2
	 mpx2ZyP7wmJRg==
Received: by mail.torqly.pl for <linux-rockchip@lists.infradead.org>; Thu, 18 Dec 2025 08:46:01 GMT
Message-ID: <20251218084500-0.1.tu.d9imq.0.1lepc14owy@torqly.pl>
Date: Thu, 18 Dec 2025 08:46:01 GMT
From: "Tomasz Jaworski" <tomasz.jaworski@torqly.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Ulga_na_sk=C5=82adki_ZUS?=
X-Mailer: mail.torqly.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_075058_003415_6B7B388F 
X-CRM114-Status: UNSURE (   0.94  )
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

RHppZcWEIGRvYnJ5LCAKCmNoY2lhxYJieW0gd3NrYXphxIcgUGHFhHN0d3UgbW/FvGxpd2/Fm8SH
IHphcnrEhWR6YW5pYSBiZW5lZml0YW1pIHcgxYJhdHd5IHNwb3PDs2IsIHBvcHJ6ZXogbmFzemUg
aW50dWljeWpuZSBuYXJ6xJlkemllLCBqYWtpbSBqZXN0IGthcnRhIGx1bmNob3dhLiAKCk5hc3pl
IGthcnR5IG9mZXJ1asSFIHd5Z29kxJksIG9zemN6xJlkbm/Fm2NpIGkgemRyb3dlIHd5Ym9yeSDF
vHl3aWVuaW93ZS4gRG9maW5hbnNvd2FuaWUgcG9zacWCa8OzdyBqZXN0IGtvcnp5c3RuZSBkbGEg
b2J1IHN0cm9uLiBLYXJ0eSBsdW5jaCB0byBkbGEgcHJhY29kYXdjeSByZWFsbmUgb3N6Y3rEmWRu
b8WbY2kgdyBwb3N0YWNpIHp3b2xuaWVuaWEgeiBaVVMgZG8gNDUwIHrFgiBtaWVzacSZY3puaWUg
bmEgcHJhY293bmlrYS4gCgpLYXJ0xJkgbW/FvG5hIGRvxYJhZG93YcSHIGRvd29sbsSFIGt3b3TE
hSwgYSBuaWV3eWtvcnp5c3RhbmUgxZtyb2RraSBuaWUgcHJ6ZXBhZGFqxIUsIGxlY3ogcHJ6ZWNo
b2R6xIUgbmEga29sZWpueSBtaWVzacSFYy4gCgpNb2fEmSBwcnplZHN0YXdpxIcgb2ZlcnTEmSwg
a3TDs3JhIHBvendvbGkgem9wdHltYWxpem93YcSHIGtvc3p0eSBpIHphcGV3bmnEhyBwcmFjb3du
aWtvbSBwb8W8xIVkYW55IGJlbmVmaXQ/CgoKUG96ZHJhd2lhbQpUb21hc3ogSmF3b3Jza2kKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
