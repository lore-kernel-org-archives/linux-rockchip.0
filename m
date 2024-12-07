Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7ADBE7717D
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Dec 2024 21:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q16YVNkEVfp97TZgPoD0MZ3oWW7ORTnHWt6Y8bC2aD4=; b=zJLPxXyv8YtxMx
	KTWAm5KQmJEvR2yxyHVPSOxc/ZxXfX0PqatPRbCb3N1SnF6B5rA7w1HoDNw8EoiYFFN2z2233oXKg
	lx0LXciyeye19iS9pBojG1d+gpXOUwmCmytzWEOimW34dLEbHHFYb2r7ofKuxG3NtYQCmm3g5K+ND
	VlMjqvtZD182f0DaLyBIX5pUc5hrLK+h4SUf/CSgggdsafOzG+JvxDB/K0ShIvvpKb4ydsOzfkwyI
	V2kzySOG4lp9uyMR9pYsTrn0KotDCtSsU2MxQw3cd+fvDPvtJhjjF8XV4BT0TcvGjv/2e0hk438fe
	sQbUKGohvFnRcrJ4R12g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tK2c7-00000004Sgh-1tQa;
	Sat, 07 Dec 2024 21:45:23 +0000
Received: from mail-oo1-xc2a.google.com ([2607:f8b0:4864:20::c2a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tK2b5-00000004SdP-02i3;
	Sat, 07 Dec 2024 21:44:20 +0000
Received: by mail-oo1-xc2a.google.com with SMTP id 006d021491bc7-5ee8eaa1694so1498086eaf.0;
        Sat, 07 Dec 2024 13:44:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733607857; x=1734212657; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QMhgNfIpxqQDNYdGeuQohUR1HujC9RmLTbgdOuARmEk=;
        b=cjL/jxXmZDGjbW5mEbG64VJiaVsuIG7ZK27Bd+V3oSZjkU88NRt3L3ssYYfD4CV+Id
         DZdKzLqAHMqhJ3lsdZ195YMqJo1QArwka3gWYxr0ApYu9M+zoTcaaYEOasMykPodkApy
         4UADyOazPMSj3Hk77Ead59QIB7sXNXWHh2gcApd6yMFgpWKiJYHZecwmNMGx+fzcZsA4
         FI+XWJaNujA9ZP/2+uMNhUiUDhqrYu8XpZGk70XXixyDeUcPuH89QFMRMg5JAKnhwDmq
         zadijiiPo0BKRttKo0TWRzUhIcfpCoPZ3LNHaeQsCiOndSBfQduDRMn57ilag6Qst30d
         fG4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733607857; x=1734212657;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QMhgNfIpxqQDNYdGeuQohUR1HujC9RmLTbgdOuARmEk=;
        b=LjnOVeUaECdi0zjLS+An4qLUd/AZQ7J+Kord0TU3mqfFqhY1z2tw5XIlLbIutWg/xN
         sRE3awOgJmAS2XU1sJek+CILvN2M+lf8Eli+Ii507pqtNxcjRRzyMIp6ad97z2M0vrRU
         WZH9734Gv9xUz6q8WA5cC9v6TMve7cOzH65mdF/J1HF1MdqZcvecnlfMToka0qw9pfXC
         5znGt2JRyhc83txbOSX46hsaA5HpKI54PCXs2pLZP3NFFMIz91KtWC3ML7898vwnte0R
         XWYYHsz1x2/ZnRVRv1hAmjTXpmWCnzqjK4iwj2XWkmgClu0aj0Rlz/zGl74Ub8qINQD+
         Oxew==
X-Forwarded-Encrypted: i=1; AJvYcCUUMxRxou11CgU/f1UrGpzCjXk1qx7JoyqMTcBKPiRSzM5PHBqj1xDIDxMhdd44i6DfPQymiD8JJm6dLZSOd4TR@lists.infradead.org, AJvYcCXOT375jdL+ez/z/bDHrxw3NAW9HYCuIYDPjSVKZaOXxYwHmH9U2wQFgcyvzVtkR1VyUGnKllFaXH91+NInEL8=@lists.infradead.org
X-Gm-Message-State: AOJu0YzDLM0nENxm7zuf4tMP2wbqIXbrBcQ3VDI2XQVHe4t9sviciwbR
	xLOD8Vcn2hVsfs3G1PG9ILoQaqPrMing4ohkBkXtQ1J4Fra2wzyQOrcafGBjSzv+DHG55bLq/2+
	4vt5ZBH4Z6TDrkv1Epy22Ti+Ep3A=
X-Gm-Gg: ASbGncumefjHaNuay67Pq5feQJLvgUFvIv4n8O01wNe1mPOplzwx6co1lVokujZNG1Q
	VXdPXrBGafOqxEmBq/qaaTkDEssisMYJDWiySpmQ2nQmvZXolrvNrMMbvbjdiAQ==
X-Google-Smtp-Source: AGHT+IG8ZycjJP/pPsbMbfgV+YwZuxy2dOx7QSYHn9/CySk4CHpxsuBci2qFQrdfOORTWwrBTmMFl/OjRx4jAcP/4rg=
X-Received: by 2002:a05:6870:280d:b0:29e:5ffa:b769 with SMTP id
 586e51a60fabf-29f73860fe0mr4694069fac.29.1733607857405; Sat, 07 Dec 2024
 13:44:17 -0800 (PST)
MIME-Version: 1.0
References: <20241111045408.1922-1-honyuenkwun@gmail.com> <20241111045408.1922-7-honyuenkwun@gmail.com>
 <CAGJh8eDdj5zwENGWHHdZt8ejdVZ=d4GTNzW57rohyL2rvEA_hg@mail.gmail.com> <CALWfF7+7KSZ2UJUXgS_Pr3=xzMEyjKgZ4BPL47zkmfnM03HUqg@mail.gmail.com>
In-Reply-To: <CALWfF7+7KSZ2UJUXgS_Pr3=xzMEyjKgZ4BPL47zkmfnM03HUqg@mail.gmail.com>
From: Marco Schirrmeister <mschirrmeister@gmail.com>
Date: Sat, 7 Dec 2024 22:44:06 +0100
Message-ID: <CAGJh8eDJMXnjsZgdgsCj+jFp=0iK9kmrH88fFSXxYLevV8aV5A@mail.gmail.com>
Subject: Re: [PATCH 3/3 v3] arm64: dts: rockchip: Add Orange Pi 5 Max board
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Ondrej Jirman <megi@xff.cz>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241207_134419_049924_3B3470D9 
X-CRM114-Status: GOOD (  15.41  )
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

SGVsbG8gSmltbXksCgpzb3JyeSBmb3IgbXkgbGF0ZSByZXBseS4KCk9uIEZyaSwgTm92IDE1LCAy
MDI0IGF0IDU6NTbigK9QTSBKaW1teSBIb24gPGhvbnl1ZW5rd3VuQGdtYWlsLmNvbT4gd3JvdGU6
Cgo+IElmIHlvdXIgcHJpbWFyeSBmb2N1cyBpcyB0byBvbmx5IHRlc3QgZU1NQyBzdXBwb3J0IGZv
ciB0aGUgT3JhbmdlIFBpIDUKPiBNYXgsIHRoZW4gYXBwbHkgdGhlIHBhdGNoZXMgb24gdG9wIGxp
bnV4LXJvY2tjaGlwIGZvci1uZXh0Lgo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9s
aW51eC9rZXJuZWwvZ2l0L21taW5kL2xpbnV4LXJvY2tjaGlwLmdpdC9sb2cvP2g9Zm9yLW5leHQK
PiBUaGF0IGdlbmVyYXRlZCBEVEIgc2hvdWxkIGJlIGFibGUgdG8gcnVuIGFnYWluc3QgYW4gb2xk
ZXIga2VybmVsIHNpbmNlCj4gdGhlIE9yYW5nZSBQaSA1IFBsdXMgYWxyZWFkeSB3b3Jrcy4KCmFw
cGx5aW5nIHYyIHBhdGNoZXMgd2FzIHdvcmtpbmcgZmluZSB3aXRoIHRoaXMga2VybmVsLiBCdXQg
SSBzdGlsbCBoYWQKdGhlIHNhbWUgcHJvYmxlbSB3aGVuIGJvb3RpbmcsIHdoZXJlIGl0IGlzIHN0
dWNrIGR1cmluZyBoYXJkd2FyZQppbml0aWFsaXphdGlvbi4KTmVlZCB0byBjaGVjayBtb3JlIG9u
IHRoaXMgYW5kIHJldHJ5IHdpdGggdGhlIGxhdGVzdCB2ZXJzaW9uLgoKPiBBbHNvLCByZWdhcmRp
bmcgdjMsIEkgcmViYXNlZCBvbiB0b3Agb2YgbGludXgtcm9ja2NoaXAgZm9yLW5leHQgdG8KPiBp
bmNsdWRlIHRoZSB1cGRhdGVzIGZvciBIRE1JIGFuZCBHUFUgb24gdGhlIE9yYW5nZSBQaSA1IFBs
dXMuCj4KPiBGb3IgbXkgZGV2ZWxvcG1lbnQgdGVzdGluZywgSSB1c2VkIENvbGxhYm9yYSdzIHJr
MzU4OC10ZXN0IGRldmVsb3BtZW50Cj4gYnJhbmNoLCBzbyBhbGwgdGhlIG5lZWRlZCBwYXRjaGVz
IHdlcmUgYWxyZWFkeSBpbiBvbmUgcGxhY2UgKHNpbmNlCj4gdGhleSB0ZXN0IG9uIGEgUmFkeGEg
Um9jayA1QiB3aXRoIHRoZSBSSzM1ODgpLgo+IGh0dHBzOi8vZ2l0bGFiLmNvbGxhYm9yYS5jb20v
aGFyZHdhcmUtZW5hYmxlbWVudC9yb2NrY2hpcC0zNTg4L2xpbnV4Ly0vY29tbWl0cy9yazM1ODgt
dGVzdC8/cmVmX3R5cGU9aGVhZHMKPgo+IFNvIGZvciB2MywgSSBoYWQgdG8gZmlyc3QgY2hlcnJ5
LXBpY2sgdGhlIE9yYW5nZSBQaSA1IFBsdXMgY2hhbmdlcwo+IGZyb20gbGludXgtcm9ja2NoaXAg
Zm9yLW5leHQuCgpJIHdhcyBub3Qgc3VjY2Vzc2Z1bCB3aXRoIGFwcGx5aW5nIHRoZSBwYXRjaGVz
IHlldCB3aXRoIHRoZSBDb2xsYWJvcmEKYnJhbmNoIHlvdSBtZW50aW9uZWQuIEkgZ3Vlc3MgSSBk
aWQgbm90IGNoZXJyeSBwaWNrIHRoZSByaWdodCBvbmVzLAp5ZXQuCkkgd2lsbCBkbyBzb21lIG1v
cmUgdGVzdGluZyB0byBzZWUgaWYgSSBjYW4gZmlndXJlIGl0IG91dC4gT3RoZXJ3aXNlIEkKd2ls
bCB3YWl0IHVudGlsIHRoZSBmaXJzdCB2ZXJzaW9uIGlzIG1lcmdlZCBhbmQgdGVzdCB0aGVuLgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
