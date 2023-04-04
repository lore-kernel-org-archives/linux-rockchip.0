Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67946C761A6
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 11:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dbqISyrChdOerZz8QHR5DfPwNUx4hJJusKzvXRYttmM=; b=gYG0wlUkKeAmy5
	BuA6o4nGGjSmDEUJkq5/tgosv21JDxYGArvkqLjlfhSugVrylc9nz62j/scAv15RVD310w89t5MSE
	nxWHvUzu26zBm0EitBFJtJViX/+1e4VGgBdbz0gmUnslHgoA3vl3Yvt9elqkEZNeYYUKjRD5usnAe
	Ds50MuUXD9U8TkYqsGgVSSMjn+5dFIiyQjbIOMaizMpbeBF7mR+Z96EefnQkpGVy/As+WYhy/IsDR
	cmJ/vHxmSgoOQCP7qh5n4QCT9N5CxcbPCKgTW3HQQkqvKbmge9FCec4kiNHvpXv5ssxyBamKyMbxO
	50CeakNtxsnaiJZ3cQyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjesc-0015L6-2O;
	Tue, 04 Apr 2023 11:31:14 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjesX-0015Jb-0q
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Apr 2023 11:31:13 +0000
Received: by mail-ed1-x530.google.com with SMTP id er13so88221195edb.9
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Apr 2023 04:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brixit-nl.20210112.gappssmtp.com; s=20210112; t=1680607866;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=isvzfUusXevjlX/m8HLoBojzsla6kKnE2+y1gA32U+s=;
        b=RWalar01Xmr+HObS0EXf9V6RV3OgW+IwyVxygsMcCo0hEWnEaxZD/UJOsmWuWmUHi0
         FB7xnIlwANfXSwnSi5UePDNhcKITLcpOODnT2sPNgQezdpq33Qqu2prAABabsMZphQpd
         wCWU6O1lVr0MPD+ocgVWEES0TxXa2wuCNrr3JdXBoTpaN0YihUYrOH3I6dWZiHwF0AfK
         kZBvEh8dDHV6zv0kGoLx4KMsEDFxwYX4+WhFDoz//KNk8EStR9Tz0IF497BCO/bRG29c
         iMUtLEFIjqjmSWuoklQxR6OrvxlyarN8st28ZGH4N8toDscXIURpqu2YKP2e3pASDpvw
         j4yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680607866;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=isvzfUusXevjlX/m8HLoBojzsla6kKnE2+y1gA32U+s=;
        b=C7XjjQn8JZU4tSNwgPedAI5R8YB7nC+cqelL5SqXNfGqZdCthcNkVn8o2wCeq/s9EN
         xlKm7hbGDxFZboJYUCFzkjZjfuhNJ1S3BU2LdRK8ShXc60nqZM8EUWlGbcPyArozWa04
         ZQrukoRJ/SD4VjfjW5MVvF3MjJOtxyt1OVQG8yOln9+iSNB0z6R09O/wQIAGzs/qJTgO
         n20I13OB0n6tdx3DEmHEThaRkkb8sxZ+zq3f+u63+XfYRlY4wjyN0gqyAuikU/KymIY4
         HkbN2ZsQApwpuj4tu9pK5cllL3oUA63UaZUI1a2L54DyizIwmA7RZO3uJsg6e2kR+qQQ
         rghQ==
X-Gm-Message-State: AAQBX9eCcmWFToNbOI4NliPgPjZTcJERJxgS5cWGTyL30R2FOIedYO/1
	yLSDrGWElZJSXPx4vRAfpM6mKA==
X-Google-Smtp-Source: AKy350a0zQtZph/zn4aeueNw/Sjo9JuX+ChnqUn8cHiLEoru4plLeDblm/ZGedDP2DOoN1iQnLaSYQ==
X-Received: by 2002:a17:907:d94:b0:933:4dc8:972d with SMTP id go20-20020a1709070d9400b009334dc8972dmr2039657ejc.20.1680607866502;
        Tue, 04 Apr 2023 04:31:06 -0700 (PDT)
Received: from ?IPV6:2a00:bba0:120c:9f02:16cc:d78a:1492:84b3? (2a00-bba0-120c-9f02-16cc-d78a-1492-84b3.static6.cust.trined.nl. [2a00:bba0:120c:9f02:16cc:d78a:1492:84b3])
        by smtp.gmail.com with ESMTPSA id dv23-20020a170906b81700b008f89953b761sm5848931ejb.3.2023.04.04.04.31.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Apr 2023 04:31:06 -0700 (PDT)
Message-ID: <52d83a29-0f16-cd4c-9810-7c6bd497fe85@brixit.nl>
Date: Tue, 4 Apr 2023 13:31:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] arm64: dts: rockchip: Change serial baud rate for
 Pinephone Pro to 1.5 MB
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, Javier Martinez Canillas <javierm@redhat.com>
Cc: Peter Robinson <pbrobinson@gmail.com>,
 Caleb Connolly <kc@postmarketos.org>, Jarrah Gosbell <kernel@undef.tools>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Ondrej Jirman <megi@xff.cz>, Rob Herring <robh+dt@kernel.org>,
 Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20230403175937.2842085-1-javierm@redhat.com>
 <3738011.44csPzL39Z@diego>
Content-Language: en-US
From: Martijn Braam <martijn@brixit.nl>
In-Reply-To: <3738011.44csPzL39Z@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_043109_502255_28ECFF64 
X-CRM114-Status: GOOD (  25.82  )
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

Ck9uIDQvNC8yMyAwOTo1MSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGksCj4KPiBBbSBNb250
YWcsIDMuIEFwcmlsIDIwMjMsIDE5OjU5OjM3IENFU1Qgc2NocmllYiBKYXZpZXIgTWFydGluZXog
Q2FuaWxsYXM6Cj4+IFRoaXMgYmF1ZCByYXRlIGlzIHNldCBmb3IgdGhlIGRldmljZSBieSBtYWlu
bGluZSB1LWJvb3QgYW5kIGlzIGFsc28gd2hhdAo+PiBpcyBzZXQgaW4gdGhlIFBpbmVib29rIFBy
byBEZXZpY2UgVHJlZSwgd2hpY2ggaXMgYSBkZXZpY2Ugc2ltaWxhciB0byB0aGUKPj4gUGluZVBo
b25lIFBybyBidXQgd2l0aCBhIGRpZmZlcmVudCBmb3JtIGZhY3Rvci4KPj4KPj4gT3RoZXJ3aXNl
LCB0aGUgYmF1ZCByYXRlIG9mIHRoZSBmaXJtd2FyZSBhbmQgTGludXggZG9uJ3QgbWF0Y2ggYnkg
ZGVmYXVsdAo+PiBhbmQgYSAnY29uc29sZT10dHlTMiwxNTAwMDAwbjgnIGtlcm5lbCBjb21tYW5k
IGxpbmUgcGFyYW1ldGVyIGlzIHJlcXVpcmVkCj4+IHRvIGhhdmUgcHJvcGVyIG91dHB1dCBmb3Ig
Ym90aC4KPiBUaGUgaW50ZXJlc3RpbmcgcXVlc3Rpb24gaXMgYWx3YXlzIGlmIHRoaXMgd2lsbCBi
cmVhayBzb21lb25lIGVsc2UncyBzZXR1cC4KPiBJJ3ZlIG5ldmVyIHJlYWxseSB1bmRlcnN0b29k
IHRoZSBzdHJhbmdlIHNldHRpbmcgb2YgMS41TUJwcywgYnV0IG9uIHRoZQo+IG90aGVyIGhhbmQg
aXQgX2lzXyBhIHJlYWxpdHkgb24gbW9zdCBib2FyZHMuCgpJdCBicmVha3MgbXkgZGV2aWNlIHRl
c3Qgc2V0dXAgYXQgbGVhc3QuIFRoZSBleHRyYSBzcGVlZCBpc24ndCB3b3J0aCB0aGUgCmhhc3Ns
ZQpvZiBoYXZpbmcgYSBmZXcgZGV2aWNlcyBhdCB3ZWlyZCBiYXVkcmF0ZXMgYW5kIHRoZSBib290
bG9hZGVyIGFscmVhZHkKc3RhcnRzIG91dHB1dHRpbmcgZGVidWcgbG9ncyBhdCAxMTUyMDAgYmF1
ZC4KCj4KPiBQZXJzb25hbGx5IEkgZG9uJ3QgY2FyZSB0aGF0IG11Y2ggZWl0aGVyIHdheSwgYnV0
IHdvdWxkIGxpa2UgYSBjb21tZW50Cj4gZnJvbSB0aGUgb3RoZXIgcGVvcGxlIHdvcmtpbmcgb24g
dGhhdCBkZXZpY2UgLSBpZiBwb3NzaWJsZS4KPgo+IEkgZ3Vlc3MgaWYgd2UgZG9uJ3QgaGVhciBh
bnl0aGluZywgSSdsbCBhcHBseSBpdCBuZXZlcnRoZWxlc3MgYXQgc29tZSBwb2ludAo+Cj4KPiBI
ZWlrbwo+Cj4KPj4gU2lnbmVkLW9mZi1ieTogSmF2aWVyIE1hcnRpbmV6IENhbmlsbGFzIDxqYXZp
ZXJtQHJlZGhhdC5jb20+Cj4+IC0tLQo+Pgo+PiBJIHRyaWVkIHRvIGluc3RlYWQgZ2V0IHJpZCBv
ZiB0aGUgYmF1ZCByYXRlIGFsdG9nZXRoZXIsIGFzIHN1Z2dlc3RlZCBieQo+PiBQZXRlciBSb2Jp
bnNvbi4gQUZBSVUgdGhhdCBzaG91bGQganVzdCBwaWNrIHdoYXRldmVyIGJhZCByYXRlIGhhcyBi
ZWVuCj4+IHVzaW5nIGJ5IHRoZSBlYXJseSBjb25zb2xlLgo+Pgo+PiBCdXQgbmVpdGhlciB1c2lu
ZyAnc3Rkb3V0LXBhdGggPSAic2VyaWFsMiIgbm9yICdzdGRvdXQtcGF0aCA9ICZ1YXJ0MicKPj4g
d29ya2VkIGZvciBtZS4KPj4KPj4gSW4gYm90aCBjYXNlcyBJIGRpZG4ndCBoYXZlIGFueSBvdXRw
dXQgdW5sZXNzIHNldHRpbmcgYSBiYXVkIHJhdGUgdXNpbmcKPj4gdGhlICdjb25zb2xlPSdwYXJh
bS4KPj4KPj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUt
cHJvLmR0cyB8IDIgKy0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszMzk5LXBpbmVwaG9uZS1wcm8uZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azMzOTktcGluZXBob25lLXByby5kdHMKPj4gaW5kZXggYTA3OTVhMmIxY2IxLi42YmJlNjViZDVi
ZDQgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXBp
bmVwaG9uZS1wcm8uZHRzCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
Mzk5LXBpbmVwaG9uZS1wcm8uZHRzCj4+IEBAIC0yNiw3ICsyNiw3IEBAIGFsaWFzZXMgewo+PiAg
IAl9Owo+PiAgIAo+PiAgIAljaG9zZW4gewo+PiAtCQlzdGRvdXQtcGF0aCA9ICJzZXJpYWwyOjEx
NTIwMG44IjsKPj4gKwkJc3Rkb3V0LXBhdGggPSAic2VyaWFsMjoxNTAwMDAwbjgiOwo+PiAgIAl9
Owo+PiAgIAo+PiAgIAlncGlvLWtleXMgewo+Pgo+PiBiYXNlLWNvbW1pdDogM2FkZjg5MzI0YTJi
MmE5ZGJjMmMxMmQ4ODk1MDIxZTdlMzRlMzM0Ngo+Pgo+Cj4KPgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
