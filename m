Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7542C61DD9
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Aug 2026 11:17:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pZc4str5EoSCT23yM/Oiu2CwgxOWYLOKAua+vcT0UnQ=; b=ofiV2WA4CzYoef
	EpM+jUN0vQ4cOeM7S6m1/8TP9Uhm5WO2cetFYdehc0eWoaE6/krpA1Jq9q58CLX6ZtBNuw6VuGxqe
	NeRTWY/pZXp5jxSMWkL2VL2JvW1jMUXtlVNGT9oyCWf5yx6CgKbvG5FibFN4RsizaHfrwzRNa5aT1
	IxUDXIzoLJnnrkLtL6bMS22rl26fd0lGm6a/wioFoq3fuFAziscsEVubmTgusWfes2tzewSK5kwY1
	hdBJ6UR+xfGE1OBQrxu67WjEqg4atB+Ndunz7qLJiIg5gVSG3rYjWzAGe5dkOYoDYdo1AEcK+5X8m
	viS7c/UIEXvwxg+GVKvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0dXQ-00000007gDC-0iCy;
	Sun, 30 Aug 2026 11:17:24 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0dXN-00000007gCN-3qsW
	for linux-rockchip@lists.infradead.org;
	Sun, 30 Aug 2026 11:17:23 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-c2532639d10so33818966b.1
        for <linux-rockchip@lists.infradead.org>; Sun, 30 Aug 2026 04:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788088639; x=1788693439; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=8qAd5YEg8CKVaHSzqWSzab/y49rCvJcw+Xu2rn/DgAc=;
        b=hVpuwYovnjOIphvaA5gSTIODkYO//cVAyM9iK9oFN18kRJU9KAU3bolEnxEcKsYaUa
         7xhQ1bAPC6z7SGhxWmQiwdaGVitemiN8Ot12yutE9iNNOjYYMcguvMt3yDrMh+/76mCd
         XhqBWAoAsa7iXzf8YTge6RxPLNwT3UrtSEVU8EhsEc3rcdFo0IFC/rDwsDJQGnbqPJmZ
         YAdvfRrKCu1qo9ZU54B1C4BZ6SUdDVL79DLbzpJrcN+T7SWXsCrhStjBCvUAKrfewFyy
         UoSkemc1aq/cc2YCFewT7SQwv36ldiPuKkYzAjURfBhNrlzVjbd9KsuT8WBsK9hWTeFM
         HBTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788088639; x=1788693439;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=8qAd5YEg8CKVaHSzqWSzab/y49rCvJcw+Xu2rn/DgAc=;
        b=hzg+NJ1KDbr31AjgKSv9JHW4/cxCkvplkR2Lv40RYpfxyTfMhgZzQxKPh8C6mc+MtL
         WxvRT3GEll0VG5trBYwAPfO3cSOWObt84fFgnxQtE4EKAGGF9C8oWUhgtsbFJNoSMne6
         pmZfhUKYJBc/wSoHcX8TkLR15dAfZV1F34pRKwJgFH55r9la2ZEqMVBv8Id3UJSzYHy0
         1kTsATlMCKzgiSzIAzici0/PVcWS8xcdA57osjcU3gtM/Cc2xmRHNdXT7ix32oJtJ6XN
         CxcFA8DnckELvL2HyQSUyyViZ7IFRnO0bu1Q3UC5ebspV8QJ1jYwakLnq9er/NTseo/s
         123w==
X-Forwarded-Encrypted: i=1; AKwUvBy74jdEFEUg4X0mKP7v4US2TNhKsFWI1TY9Xjy0lf2X7TgNK7sCzwAUyY267rpUi+5gRKBSmKCeopxDjU5dYA==@lists.infradead.org
X-Gm-Message-State: AFuF++kHTQ2TRXbQSTb5VgSYwiP0kcOMBobV/JocJ+2ZHc8DxhzHdGc4
	X+t8ebj+60kFBajiNyRq6QDCkO2l8Ywf9UVqqcEg71e9R6n2scqtoKDz
X-Gm-Gg: AYBFou0ZRHqOEvZ/lFyufDz/RUkQqUvGS1abClY9mOMqFneCuKwjyAGyXx2++vwDLPe
	rjlGeE7KH9lhFPY+gAYIeQaAcVdkT55OX416Q7rcNV3V0cZb3NRFCnzVMdeDYKS1QuxLwiToow2
	+YJ5h2FCV4Z8piDpT3j19HZb997h976k81Vr0yn0BEYifq8Ufb0kwVY76qd3VQ34RFQFqS2IRtb
	l5YDPdBY99tGDoEOIV4pv5rixOMr60dexupl8FNKP8iie54llLDrmKeXb8nrL0z2+gwdy4dvErw
	lvlz+GMXq+uACK09TiaED8p9HMoccQME0CLWMQcYLasNgzOdP+m0bpbI5RlGmhNeI3QxDheCEk6
	w+JerKqAxuLehZIzENNBNgQca44iBdHmRylHMshePkIKiVa0Tm+kFilFdAMARDdRj4iTZueG4Zq
	0qv9qyZ9vregYmKlDg1MR9Npm/M4BacLzLLJHsJHOtV1TudawjbLAxhMQsb6WwdMlWA3Mzk3gct
	EpSY8nhiBUCqXOyRhSOcCMHLyQ=
X-Received: by 2002:a05:6402:43c6:b0:6a0:d411:930d with SMTP id 4fb4d7f45d1cf-6a60d36c8ddmr5293719a12.2.1788088639174;
        Sun, 30 Aug 2026 04:17:19 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:0:32d0:42ff:fe10:6983? ([2a02:a449:4071:0:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6a611c38e82sm2188922a12.19.2026.08.30.04.17.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Aug 2026 04:17:17 -0700 (PDT)
Message-ID: <545b78a0-159b-4ebd-9e2a-47d519c98bf9@gmail.com>
Date: Sun, 30 Aug 2026 13:17:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: rockchip: smp: enable CPU1 for rk3066a
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Russell King <linux@armlinux.org.uk>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, =?UTF-8?Q?H=C3=BCseyin_BIYIK?=
 <boogiepop@gmx.com>
References: <20260829-cpu-v1-1-33dca576db92@gmail.com>
 <2667576.VLH7GnMWUR@diego>
Content-Language: en-US, ar-EG
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <2667576.VLH7GnMWUR@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260830_041721_974851_47968188 
X-CRM114-Status: GOOD (  18.00  )
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

SGksCgpPbiA4LzI5LzI2IDIzOjU5LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBBbSBTYW1zdGFn
LCAyOS4gQXVndXN0IDIwMjYsIDAxOjQwOjU3IE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0
IHNjaHJpZWIgSm9oYW4gSm9ua2VyIHZpYSBCNCBSZWxheToKPj4gRnJvbTogSMO8c2V5aW4gQklZ
SUsgPGJvb2dpZXBvcEBnbXguY29tPgo+Pgo+PiBSSzMwNjZhIENQVTEgZmFpbHMgdG8gY29tZSBv
bmxpbmUuIEZpeCBieSB1c2luZwo+PiBhIHNpbWlsYXIgbWFpbGJveCBjb25zdHJ1Y3Rpb24gYXMg
aW4gdXNlIHdpdGgKPj4gb3RoZXIgUm9ja2NoaXAgU29Dcy4KPiAKCj4gIlJLMzA2NiBDUFUxIGZh
aWxzIHRvIGNvbWUgb25saW5lIHdpdGggcmVjZW50IGtlcm5lbHMuLi4uW3Jlc3RdIiBvciBzbwoK
Tm90IHJlY2VudC4uCgo+IGFuZCBhbHNvIHBsZWFzZSB1c2UgdGhlIGxpbmUgbGVuZ3RoIHVwIGEg
cmVzb25hYmxlIGxlbmd0aCBsaWtlIGFyb3VuZCA3MD4gdG8gNzUgY2hhcmFjdGVycy4KPiAKPiBB
bHNvLCBpcyBpdCBrbm93biwgd2h5IHRoYXQgaGFwcGVucyAtIGkuZS4gd2hhdCBjaGFuZ2VkPwoK
CldoYXQgbG9hZGVyIGNoYWluIGRpZCB5b3UgdXNlIHRoZW4/CgpUaGlzIGd1ZXNzaW5nISEhOgpG
cm9tIFRSTTogUksgUFgyL3JrMzA2NmEgc3VwcG9ydHMgdG8gYm9vdCBmcm9tIGludGVybmFsIGJv
b3Ryb20gb3IgZW1iZWRkZWQgU1JBTQpDdXJyZW50bHkgcmszMDY2IFUtYm9vdCBkb2Vzbid0IHJl
bWFwLCBzbyB3ZSBlbmQgdXAgaW4gUk9NIGNvZGUgd2FpdGluZyBmb3IgZGVhZGJlYWY6Cgp2b2lk
IG1haW4odm9pZCkKewogICAgICAgIGRlYWRiZWFmID0gMTsKICAgICAgICBpZiAoICEoX19tcmMo
MTUsIDAsIDAsIDAsIDUpICYgMHhGKSApCiAgICAgICAgewogICAgICAgICAgICAgICAgX19zZXRf
Q1BTUigweEQydSk7CiAgICAgICAgICAgICAgICBfX3NldF9DUFNSKDB4RDN1KTsKICAgICAgICAg
ICAgICAgIERFTEFZX3dyaXRlKDI0KTsKICAgICAgICAgICAgICAgIENSVV9DTEtTRUwoKTsKICAg
ICAgICAgICAgICAgIERFTEFZKDEwMDAwKTsKICAgICAgICAgICAgICAgIE1BSU5fTE9PUDF4NCgp
OwogICAgICAgICAgICAgICAgRE5MX0xPT1AoKTsKICAgICAgICAgICAgICAgIHdoaWxlICggMSAp
CiAgICAgICAgICAgICAgICAgICAgICAgIDsKICAgICAgICB9CiAgICAgICAgX19zZXRfQ1BTUigw
eEQzdSk7CiAgICAgICAgd2hpbGUgKCBkZWFkYmVhZiAhPSAweERFQURCRUFGICkKICAgICAgICAg
ICAgICAgIF9fd2ZlKCk7CiAgICAgICAgc2Vjb25kYXJ5X3N0YXJ0dXAoKTsKfQoKQ2FuJ3QgcHV0
IGEgcHJlY2lzZSB0aW1lIHRhZyBvbiBpdCBzaW5jZSB3aGVuLgpMZXQgdXMgbGVhZCBieSB3aGF0
IGN1cnJlbnQgYXZhaWxhYmxlIG9wZW4gc291cmNlIGxvYWRlcnMgc29sdXRpb25zIGNhbiBkby4K
UGxlYXNlIGFkdmlzZSBoZXJlLgpIb3cgZmFyIGRvZXMgYSBmaXhlcyB0YWcgaGF2ZSB0byBnbyBi
YWNrPwoKPiAKPj4gU2lnbmVkLW9mZi1ieTogSMO8c2V5aW4gQklZSUsgPGJvb2dpZXBvcEBnbXgu
Y29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBKb2hhbiBKb25rZXIgPGpieDYyNDRAZ21haWwuY29tPgo+
PiAtLS0KPj4gIGFyY2gvYXJtL21hY2gtcm9ja2NoaXAvcGxhdHNtcC5jIHwgMyArKy0KPj4gIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvcGxhdHNtcC5jIGIvYXJjaC9hcm0vbWFjaC1y
b2NrY2hpcC9wbGF0c21wLmMKPj4gaW5kZXggZjY1OWQ4OTRiZmFlLi5kN2QwODBjMjlmM2MgMTAw
NjQ0Cj4+IC0tLSBhL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvcGxhdHNtcC5jCj4+ICsrKyBiL2Fy
Y2gvYXJtL21hY2gtcm9ja2NoaXAvcGxhdHNtcC5jCj4+IEBAIC0xMzMsNyArMTMzLDggQEAgc3Rh
dGljIGludCByb2NrY2hpcF9ib290X3NlY29uZGFyeSh1bnNpZ25lZCBpbnQgY3B1LCBzdHJ1Y3Qg
dGFza19zdHJ1Y3QgKmlkbGUpCj4+ICAJaWYgKHJldCA8IDApCj4+ICAJCXJldHVybiByZXQ7Cj4+
ICAKPj4gLQlpZiAocmVhZF9jcHVpZF9wYXJ0KCkgIT0gQVJNX0NQVV9QQVJUX0NPUlRFWF9BOSkg
ewo+PiArCWlmIChyZWFkX2NwdWlkX3BhcnQoKSAhPSBBUk1fQ1BVX1BBUlRfQ09SVEVYX0E5IHx8
Cj4+ICsJICAgIG9mX21hY2hpbmVfaXNfY29tcGF0aWJsZSgicm9ja2NoaXAscmszMDY2YSIpKSB7
Cj4+ICAJCS8qCj4+ICAJCSAqIFdlIGNvbW11bmljYXRlIHdpdGggdGhlIGJvb3Ryb20gdG8gYWN0
aXZlIHRoZSBjcHVzIG90aGVyCj4+ICAJCSAqIHRoYW4gY3B1MCwgYWZ0ZXIgYSBibG9iIG9mIGlu
aXRpYWxpemUgY29kZSwgdGhleSB3aWxsCj4gCgo+IGlzbid0IG5vdyB0aGUgb25seSB1c2VyIG9m
IHRoZSBvbGQgc3lzdGVtIHRoZSBSSzMxODg/Cj4gCj4gV2l0aCBib3RoIHJrMzA2NiBhbmQgcmsz
MTg4IGZyb20gYSBzaW1pbGFyIHRpbWUsIEknZCBhc3N1bWUgYm90aCBjb3VsZAo+IGJlIHN3aXRj
aCBhbmQgdGh1cyB0aGUgdGhlIG5vdyB1bnVzZWQgY29kZSByZW1vdmVkPwo+IAoKPiBJJ3ZlIG5l
dmVyIHRob3VnaHQgdG8gbG9vayBpbnRvIHRoYXQgLi4uIG5lZWQgdG8gZmluZCBteSBSSzMxODgg
Ym9hcmQgOi0pCgpMZXQgbWUga25vdyB3aGF0IHJrMzE4OCBVLWJvb3QgYW5kIEtlcm5lbCBlbmQg
dXAgd2l0aCBob3cgbWFueSBDUFVzLCBzbyB3ZSBjYW4gcmVtb3ZlIHRoZSAiaWYiIGNvbmRpdGlv
biBhbHRvZ2V0aGVyLgoKSm9oYW4KCj4gCj4gCj4gSGVpa28KPiAKPiAKPT09PT09PT09PT0KCmh0
dHBzOi8vZ2l0aHViLmNvbS9hcm1ob2ZmL3UtYm9vdC1yb2NrY2hpcC9ibG9iL3UtYm9vdC1yazMw
NjYtc2RjYXJkL2JvYXJkL3JvY2tjaGlwL2NvbW1vbi9wbGF0Zm9ybS9yazMwL3JvbWxvYWRlci5z
I0wxMTAKaHR0cHM6Ly9naXRodWIuY29tL3Bhd2VsamFyb3N6ODIvdS1ib290LXJrMzA2Ni9ibG9i
L3dpcC9yazMwNjYtOC9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL3JrMzA2Ni1ib2FyZC5jI0wzMgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
