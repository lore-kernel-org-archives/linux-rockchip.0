Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7C84C2BA18
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 15:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3FXuT+dce/9VlLYLfRs5QWJAUNxSkl6m1tQr7A9K7b4=; b=yoOQymizmXfmFW
	slu/0InLGLQQIxVDDlXZJlSAJJ3igaV7GQlOlkGg278ZwR6A9W7olYjkOqdbPqG96yAkuPcgpi9cs
	3xrGN2K4sYlIM6jmO46rd78jGOHf+BAvhStBp6drLQhZqXAlG2cSxdwi3ZO0QWF8V66XUjNLadW0C
	7HPj8TkC+2L9STIzimdlLUS5Pdu2kreS8PpoknqMkWBBFeql3ynJCfHOMBnkmP4HqlZRPaOoxViOi
	YSrr21kEVO1MIX3GMMN2aXtEPi2lJPs0Ri5XOlUfB3EcLNduu3gORqL0BnsCMc7SzuE5mfeyOe0HO
	iTqZSuinIAEwy3QfK8fQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJDs1-0000000BL3F-05VM;
	Mon, 17 Jun 2024 15:02:09 +0000
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJCmR-0000000AyYJ-41NN
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Jun 2024 13:52:24 +0000
Received: by mail-qk1-x736.google.com with SMTP id af79cd13be357-7955f3d4516so482041385a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2024 06:52:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1718632335; x=1719237135; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=S8oKg7qQ4NYsaNZMwjpwaY5Zq6XvOvJgc9CYYY9wH1A=;
        b=Qrr9N9lpsJrhmkZ5q35lN3XTfBeP2NxfrNMbZ4OmZ33cu1kZkVfpszD2p3Kf0UNNxn
         7eJngF7JVop3Jjmeirs7mwM73PLGhP1hHp22YLxyJ9L/QFtW1QFDNCLuI8DAIU0Mv8C+
         tqzQj/77H7NFNjq0a1gOjovRWtVAvk9NX/UZbXyI3q9HiSb0n3Bm4rnXr7lg+M+zn5Ol
         ELip6gmaxkGkMEs0NtAmgRrbZEfiZPTDgKpVRBy03JmLo4Mfpz0NU/0xj2kaOjrmRPoA
         PwsTI6XdKs4/6yeQ8oLzQtOEb2zyfC9PSS2X1QzqQKNRyoUTPcgelWQpZfpZedoYzzfJ
         4BKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718632335; x=1719237135;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S8oKg7qQ4NYsaNZMwjpwaY5Zq6XvOvJgc9CYYY9wH1A=;
        b=WXIGYas9ENvkhj1FJjR3oRKpHHf9WvFjT8eD36c7JNjthLW8iT1XO64biQMNUl9MXB
         XYcg4Yf2sP+Vs/sozRdHouSW5KN0SGuKX8Ikm3uVbFJF+w0MxqQet7NHSipz+agEjHGz
         JmosucQhtlsDIxWPdFgfqX2Qlc1WOlo9INvwwQ1ft1eXw+Twp1HR71DPO5nUl07kR5WI
         ThJWb1Tme0Pk0BK6g31KnroPT7+6aY3rZGz0BqIrxV+y6OdPqAzfrFiYTQ9ucwMK01ng
         cKpVGK3lqdKgkBdz5O/dYIvThW/mCq8THhRokQ9lnxYUxW18lEUglol4BB6hU6zB7/TH
         T9rg==
X-Forwarded-Encrypted: i=1; AJvYcCW7i2w1XFMEjOEujraU7riyNjkuz9/x2RQcu0X8QTTi6hW1t7+G/OHNII0DorwSqx4peDZSEiQWOh+LJdkJpmRj8pAsbexTpwXOlqCcmuHjqoW8
X-Gm-Message-State: AOJu0YxL7Y86zNXpqHcFrb+5DIjDjxWn+kL7ZIdWwEati2eIj3jZiwAW
	ZJhBllmfCjzbTx1G5iuDJPc9MDV62wA+r1Zw/MomuVbI5i7qxCmpBF5oYMXOzZ0=
X-Google-Smtp-Source: AGHT+IGyIko1VGBafHP2QtDzGF8rEqYm+Kn5JkvhSCEhEsxF7IzDWjF9X3Q8Mr2an8LHTllmb6fjkQ==
X-Received: by 2002:a05:620a:19a6:b0:795:e9cd:f5b8 with SMTP id af79cd13be357-79810103ab8mr2338158885a.23.1718632335615;
        Mon, 17 Jun 2024 06:52:15 -0700 (PDT)
Received: from nicolas-tpx395.lan ([2606:6d00:15:57da::7a9])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-798abc02f68sm431571485a.86.2024.06.17.06.52.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 06:52:15 -0700 (PDT)
Message-ID: <eb36cf0fef6208e2842c41517579066109530b28.camel@ndufresne.ca>
Subject: Re: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Diederik de Haas <didi.debian@cknow.org>, linux-kernel@vger.kernel.org, 
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,  Sebastian Reichel
 <sebastian.reichel@collabora.com>, Dragan Simic <dsimic@manjaro.org>,
 Alexey Charkov <alchark@gmail.com>, Cristian Ciocaltea
 <cristian.ciocaltea@collabora.com>,  Andy Yan <andy.yan@rock-chips.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-staging@lists.linux.dev
Date: Mon, 17 Jun 2024 09:52:14 -0400
In-Reply-To: <5087685.q4sLEYJVHI@bagend>
References: <20240615015734.1612108-1-detlev.casanova@collabora.com>
	 <3333233.eAoTOS8U2s@bagend> <5969581.LvFx2qVVIh@arisu>
	 <5087685.q4sLEYJVHI@bagend>
User-Agent: Evolution 3.52.2 (3.52.2-1.fc40) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_065220_185935_65AD7381 
X-CRM114-Status: GOOD (  18.25  )
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

SGksCgpMZSBkaW1hbmNoZSAxNiBqdWluIDIwMjQgw6AgMTA6NDAgKzAyMDAsIERpZWRlcmlrIGRl
IEhhYXMgYSDDqWNyaXTCoDoKPiBPbiBTYXR1cmRheSwgMTUgSnVuZSAyMDI0IDIxOjQ0OjMyIENF
U1QgRGV0bGV2IENhc2Fub3ZhIHdyb3RlOgo+ID4gPiBTbyBpcyB0aGlzIGp1c3QgYW4gKHVuZm9y
dHVuYXRlKSB1c2Ugb2YgdGhlIHNhbWUgd29yZHMgb3IgaXMgdGhhdCB3aWtpCj4gPiA+IHBhZ2Ug
anVzdCB3cm9uZyAuLi4gb3IgYmV0dGVyIHlldDogZG9lcyBya3ZkZWMyIHN1cHBvcnQgUkszNTZ4
IHRvbz8KPiA+IAo+ID4gWWVzLCB0aGUgdmRwdTM0eCBkZWNvZGVyIG9uIHJrMzU2eCBzb2NzIHNo
b3VsZCBiZSBzdXBwb3J0ZWQgYnkgdGhpcyBkcml2ZXIKPiA+IGJ1dCBJIGRvbid0IGhhdmUgYm9h
cmRzIHRvIHRlc3QgdGhhdCB1bmZvcnR1bmF0ZWx5Lgo+ID4gCj4gPiBUaGlzIG1pZ2h0IGFsc28g
YmUgdXNlZCBvbiBmdXR1cmUgcm9ja2NoaXAgcmVsZWFzZXMgbGlrZSB0aGUgcmszNTc2LiBCdXQK
PiA+IHRoZXkgYWxsIGhhdmUgdGhlaXIgb3duIGFkYXB0YXRpb25zLiBJZiB5b3UgY2FuIHRlc3Qg
aXQgb24gcmszNTY4IGJhc2VkCj4gPiBoYXJkd2FyZSwgSSdsbCBoYXBwaWx5IGFkZCBhIGNvbXBh
dGlibGUgZm9yIGl0Lgo+IAo+IEl0IHdvdWxkIGJlIGdyZWF0IGlmIHlvdSdkIGFkZCBhIGNvbXBh
dGlibGUgZm9yIGl0Lgo+IEkgZG9uJ3QgaGF2ZSByazM1NjggYmFzZWQgSFcsIGJ1dCBJIGRvIGhh
dmUgcmszNTY2IGJhc2VkIEhXIGFuZCBBRkFJSyB0aG9zZSAKPiBhcmUgdGhlIHNhbWUgd2hlbiBp
dCBjb21lcyB0byB0aGUgJ3ZpZGVvJyBzdHVmZi4KCk91ciB1c3VhbCBhcHByb2FjaCBpcyB0byBy
ZXF1aXJlIGF0IGxlYXN0IGEgIlRlc3QtYnk6IiB0byBpbmNsdWRlIHBhdGNoZXMKd3JpdHRlbiB3
aXRob3V0IEhXLiBJIHRoaW5rIGl0IHdpbGwgY29tZSBzb29uIGVub3VnaCwgYW5kIHdlIGNhbiBm
b2N1cyBvbgpnZXR0aW5nIHRoZSBkcml2ZXIgaW4gYXQgdGhpcyBtb21lbnQuCgpOaWNvbGFzCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
