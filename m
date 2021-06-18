Return-Path: <SRS0=89Gv=LM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9CFBC49EA2
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 16:30:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9EF47613D1
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 16:30:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9EF47613D1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zTAn+yKqh3f961i5ab3a/0fwbxgjWl8WsAGTAtRBbEI=; b=U6550d1cWJ+ooJB4ApSZ8Cztz8
	xqVhCuPx1pWoFVeIDT6MNwFanEeYFVe9OH5H0JaO9LuXMzn0i8KB0uMm58l4ArE/jwSvSAf2VANr/
	G9ObnuLSjD9JMzz8KpP/7z9wf9tJk0zOe7rFYS9VYFFvNxfTWaCMFTxHLBavzzUj647hNZlxRFgsu
	CawmtSG07wpTMr2BU4ab8CROKGD4+u4wZpIQLRsC/YRKco5wsrdN3WdyUDqp9AIlzjLwO1nwo7egT
	2uH2hDSQh3XzT7zQ0jUNVygO+Cjf2L3BGivXM4hyj4zR+Lj9FtThNJc/ndBDHUP7U26u7ojg4oLUd
	su0uMg6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luHNz-00Evxa-0N; Fri, 18 Jun 2021 16:30:27 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luHNl-00Evu4-F4; Fri, 18 Jun 2021 16:30:14 +0000
Received: by mail-wm1-x329.google.com with SMTP id j18so5857351wms.3;
 Fri, 18 Jun 2021 09:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=l9rirGTX9IKkD9bpHXZHalsVI51vG9jgV3KWdghVMEw=;
 b=kfdepGu517XhNkOHjQLDoHqOKJRZRJLi6aQLe0B0vz1ZrehFoPBcKilWIjKQGRxhzu
 GrHN0rSqh+yzWgNZyeBTVs0SjeA508kM7rFJh+riQ6gTXsMYKCQU/VmnRbc24UHS9xiE
 P+Crk97KjZve0b8MKnUEwPmi8OoBDuY+SQjAvC/61nyatMxYOXYavpo5+P7bKl28PIDv
 69TctXGe9nPkXd0Art5wZvwic6UKMz9NSBkPs8GihQ70WrbwMmSrTfH4vAyj1N2yEyyA
 LHBPOLRKEOpb/Tgdp2QSdB29jo71EomWH8+aGUDH7UBCdkdj7mo2Ko548+PT25uSgeQu
 sGcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=l9rirGTX9IKkD9bpHXZHalsVI51vG9jgV3KWdghVMEw=;
 b=aqaCWdewgWeVctBHUmXiXdvWEXqohzmo0kqC3eOOlkhca9Nw7UZ8xv68wpt5IBac5m
 LR1oKr2HVL4fJ+1bQL8t8+fppeLlK9pqCGFhQ6aMhZ7MgFRQS7e+x62eG3TWj8aMbn4d
 h6mMvb3OlFiuX8+Lk+Ru6A7tadwyjAtWLOMPQv3CU+nd3omnXjXr7XBXX2sXqzS4gULW
 D26K55hIn9EAa+iEiOrdgVr9sQrV0hPzClK+MI7G2BRvDmAUsNz05axs6HQGk/E6uccv
 dRkaAKORiiboQfJNBmemMmaWQyAjBS14Ci2445bvps2l4b1kmNvpXL0Oemjn8pV9YgON
 f2zQ==
X-Gm-Message-State: AOAM5322w6Lbxp6VXvsR7unG9OjFjGqIoK3GXsx4HEFVw8Qn5kv4WRHd
 FX45Q3vGl89uP2AAs2jZHPXUalFgmjP0
X-Google-Smtp-Source: ABdhPJyH/jfmzkG+Bu55AqXkxDs9qM0nYbBphoXS6Ff83BHpbC3sFi1TCxb1evEQ1Ul0PgG4r8YebA==
X-Received: by 2002:a05:600c:3ba0:: with SMTP id
 n32mr12483723wms.107.1624033811784; 
 Fri, 18 Jun 2021 09:30:11 -0700 (PDT)
Received: from [192.168.200.247] (ip5b434b8b.dynamic.kabel-deutschland.de.
 [91.67.75.139])
 by smtp.gmail.com with ESMTPSA id a24sm7871081wmj.30.2021.06.18.09.30.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 18 Jun 2021 09:30:11 -0700 (PDT)
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Add RK3399 Rock Pi 4a plus board
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, balbi@kernel.org, gregkh@linuxfoundation.org, 
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20210617044955.598994-1-knaerzche@gmail.com>
 <20210617044955.598994-2-knaerzche@gmail.com> <4545451.QWXsJ6tzlI@diego>
From: Alex Bee <knaerzche@gmail.com>
Message-ID: <d88df311-9ec5-9552-7b12-2db88b99b434@gmail.com>
Date: Fri, 18 Jun 2021 18:30:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <4545451.QWXsJ6tzlI@diego>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_093013_568541_BA538E2D 
X-CRM114-Status: GOOD (  24.57  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSGVpa28sCgpBbSAxOC4wNi4yMSB1bSAxNTowOCBzY2hyaWViIEhlaWtvIFN0w7xibmVyOgo+
IEFtIERvbm5lcnN0YWcsIDE3LiBKdW5pIDIwMjEsIDA2OjQ5OjU0IENFU1Qgc2NocmllYiBBbGV4
IEJlZToKPj4gUm9jayBQaSA0YSBwbHVzIGJvYXJkIGlzIHRoZSBzdWNjZXNzb3Igb2YgUm9jayBQ
aSA0YSBib2FyZC4KPj4KPj4gRGlmZmVyZW5jZXMgdG8gdGhlIG9yaWdpbmFsIHZlcnNpb24gYXJl
Cj4+IC0gaGFzIFJLMzM5OSBPUDEgU29DIHJldmlzaW9uCj4+IC0gaGFzIGVNTUMgKDE2IG9yIDMy
IEdCKSBzb2xkZXJlZCBvbiBib2FyZCAobm8gY2hhbmdlcyByZXF1aXJlZCwKPj4gICAgc2luY2Ug
aXQgaXMgZW5hYmxlZCBpbiByazMzOTktcm9jay1waS00LmR0c2kpCj4+IC0gZGV2IGJvYXJkcyBo
YXZlIFNQSSBmbGFzaCBzb2xkZXJlZCwgYnV0IGFzIHBlciBtYW51ZmFjdHVyZXIgcmVzcG9uc2Us
Cj4+ICAgIHRoaXMgd29uJ3QgYmUgdGhlIGNhc2UgZm9yIG1hc3MgcHJvZHVjdGlvbiBib2FyZHMK
Pj4KPj4gSSBkaWRuJ3QgYWRkIHlldCBhbm90aGVyIGNvbXBhdGlibGUsIHNpbmNlIHRoZSBzbWFs
bCBzZXQgb2YgZGlmZmVyZW5jZXMKPj4gYXJlIGNhcHR1cmVkIGJ5IHRoZSBkZXZpY2UgdHJlZS4K
Pj4KPj4gU2lnbmVkLW9mZi1ieTogQWxleCBCZWUgPGtuYWVyemNoZUBnbWFpbC5jb20+Cj4+IC0t
LQo+PiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUgICAgICAgICAgICAg
IHwgIDEgKwo+PiAgIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jay1waS00YS1wbHVz
LmR0cyAgIHwgMTQgKysrKysrKysrKysrKysKPj4gICAyIGZpbGVzIGNoYW5nZWQsIDE1IGluc2Vy
dGlvbnMoKykKPj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzOTktcm9jay1waS00YS1wbHVzLmR0cwo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvTWFrZWZpbGUKPj4gaW5kZXggYzNlMDBjMGUyZGI3Li5kYmQ3ZDM3OTUwZjEgMTAwNjQ0
Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUKPj4gKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZQo+PiBAQCAtNDMsNiArNDMsNyBA
QCBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszMzk5LXB1bWEtaGFpa291LmR0Ygo+
PiAgIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazMzOTktcm9jLXBjLmR0Ygo+PiAg
IGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazMzOTktcm9jLXBjLW1lenphbmluZS5k
dGIKPj4gICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszMzk5LXJvY2stcGktNGEu
ZHRiCj4+ICtkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszMzk5LXJvY2stcGktNGEt
cGx1cy5kdGIKPj4gICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszMzk5LXJvY2st
cGktNGIuZHRiCj4+ICAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzM5OS1yb2Nr
LXBpLTRjLmR0Ygo+PiAgIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazMzOTktcm9j
azk2MC5kdGIKPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
Mzk5LXJvY2stcGktNGEtcGx1cy5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzM5OS1yb2NrLXBpLTRhLXBsdXMuZHRzCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4
IDAwMDAwMDAwMDAwMC4uMmRlYWFiN2Y5MzA3Cj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jay1waS00YS1wbHVzLmR0cwo+PiBA
QCAtMCwwICsxLDE0IEBACj4+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAr
IE9SIE1JVCkKPj4gKy8qCj4+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMTkgQWthc2ggR2FqamFyIDxB
a2FzaF9HYWpqYXJAbWVudG9yLmNvbT4KPj4gKyAqIENvcHlyaWdodCAoYykgMjAxOSBQcmFnbmVz
aCBQYXRlbCA8UHJhZ25lc2hfUGF0ZWxAbWVudG9yLmNvbT4KPj4gKyAqLwo+PiArCj4+ICsvZHRz
LXYxLzsKPj4gKyNpbmNsdWRlICJyazMzOTktcm9jay1waS00LmR0c2kiCj4+ICsjaW5jbHVkZSAi
cmszMzk5LW9wMS1vcHAuZHRzaSIKPj4gKwo+PiArLyB7Cj4+ICsJbW9kZWwgPSAiUmFkeGEgUk9D
SyBQaSA0QSBwbHVzIjsKPj4gKwljb21wYXRpYmxlID0gInJhZHhhLHJvY2twaTRhIiwgInJhZHhh
LHJvY2twaTQiLCAicm9ja2NoaXAscmszMzk5IjsKPiBobW0sIEkgZG9uJ3QgcmVhbGx5IGZvbGxv
dyB3aHkgeW91J3JlIHJlLXVzaW5nIHRoZSByYWR4YSxyb2NrcGk0YQo+IGNvbXBhdGlibGUuIEkn
ZCBhc3N1bWUgdGhpcyBzaG91bGQgYmUgcmFkeGEscm9ja3BpNGErIG9yIHNvbWV0aGluZz8KCkFo
LCB5ZXMgdGhpcyB3YXMgcGFydCBvZiBteSBjb3ZlciBsZXR0ZXIsIHdoaWNoIG9idmlvdXNseSBn
b3QgbG9zdCAKc29tZXdoZXJlLgoKQW55d2F5czogUmVhc29uIEkgdGhvdWdodCBvZiB3YXM6IEZv
ciBleGFtcGxlIGJyb2FkY29tIG52cmFtIGZpbGUgbmFtZXMgCm11c3QgbWF0Y2ggdGhlIGNvbXBh
dGlibGUgc3RyaW5nIGFuZCB0aGV5IGhhdmUgdG8gYmUgY29waWVkL3N5bWxpbmtlZCAKb3ZlciBh
bmQgb3ZlciBpZiB3ZSBhZGQgbmV3IGNvbXBhdGlibGVzIGZvciBldmVyeSBtaW5vciBjaGFuZ2Vk
IHJldmlzaW9uIApvZiBhIGJvYXJkLiBJIGd1ZXNzIHRoZXJlIGFyZSBtb3JlIGV4YW1wbGVzIGZv
ciB0aGF0IGluIHVzZXJsYW5kLgoKPgo+IEkuZS4gaWYgYSBib290bG9hZGVyIG5lZWRzIHRvIHNl
bGVjdCB0aGUgbWF0Y2hpbmcgZGV2aWNldHJlZSBmcm9tIGEgbGlzdAo+IG9mIGF2YWlsYWJsZSBk
ZXZpY2V0cmVlcywgdGhpcyBjb3VsZCBlbmQgdXAgcnVubmluZyBhIHJlZ3VsYXIgcm9ja3BpNGEK
PiAod2l0aG91dCArKSB1c2luZyB0aGUgT1AxIG9wZXJhdGluZyBwb2ludHMgYW5kIHRodXMgYXQg
d2F5IHRvbyBoaWdoCj4gZnJlcXVlbmNpZXMuCgpCZXNpZGVzIEkgd2Fzbid0IGF3YXJlLCB0aGF0
ICJhIGJvb3Rsb2FkZXIiIGNhbiBkbyB0aGF0IGFscmVhZHkgSSAKdW5kZXJzdGFuZCB5b3VyIGNv
bmNlcm5zIGFuZCB3aWxsIGNoYW5nZSBpdC4KCkFsZXguCgo+Cj4gSGVpa28KPgo+Cj4+ICt9Owo+
Pgo+Cj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
