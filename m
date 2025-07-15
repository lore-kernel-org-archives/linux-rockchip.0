Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C066C83F17
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jul 2025 09:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E4A7Nvyvv/ZzE9Y/ZImRl9DvRLFmBabzDku0itb7094=; b=q/Ie1fHyCMSENB
	EIHAtjYbeUyb20OM580PCeE/Mq8WHl02c7K7lV0XIiouqruk6wyAeAVendUK0QwkHF4479FbzLoVB
	u173XuLWWARN1jscFLD9bP0jLEuymTqZ24Y4F6NqeSjARmjpohiRVy4m3Ky+9EnrWpXA5KOah9BvT
	F+LqjwliHRTHGnbV3NhJ8+JB74xcCtZvyfZzKBfuHv4uRMBVWNHseYwTfcQdPGLz5m1cmK1nXN1mA
	83CAOVj/8KGAYKJN9dsoZ39R/zpVvyMvKFykiN/5uVlQPHM004UDxQL0V1iZdpHmYlA03iiihqHax
	6iAl1d/9arhZzdrNgZSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubcDb-00000004jce-2xhp;
	Tue, 15 Jul 2025 09:44:59 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubbXn-00000004buY-2MJ5
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Jul 2025 09:01:49 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4561607166aso16029385e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Jul 2025 02:01:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1752570106; x=1753174906; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=lKAztWAMbkIxg0BaFKadJXM0+B/yzJVqX90pmclYaLM=;
        b=JLP6zZO+d88dHG3qkf6M4PjuLmsxxC3XjfWSrmPUqaEJmaZFv6lYDKqaFIBRjuJEpf
         G2jtyAnUebjGooqlhvfZ3fvMcsu742j0/1Wpebx8I61L4VA+hXiCZzREQ2jZxWYqT7b3
         fogeKG6T1cEGT5LdLaAqQCQ0/jRO2bCOAv/ADnTRcLtwjbXYZpfuHZsjJLSs7b+jNNx+
         eMiwbemBNa3alMfn+s6vIuwEaMN0yeY32pfNgJKGJIU1QAeLA0jrRCRrkK777JGtAZBj
         zrehHQJiO2MowsxnZCjZkAjpw6dEVOJ8H4bfLVK/yEtfNrnEDtUcnuJQ5T+wfKcmGnq/
         7E+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752570106; x=1753174906;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lKAztWAMbkIxg0BaFKadJXM0+B/yzJVqX90pmclYaLM=;
        b=HCrkwY50QWJiokCkDTQvZsJztfprVWPZQoriKELU9V8jv4PQ3MVEMGt2cm0IzbUUUm
         vBVhMxsplqTGj1h3AtsMUUmdK9m7vU+QgeAtPLocFyuRUe/u9ll+XJCA9rniJj/tkLpO
         N3Bo9NoeOcZ5++vCLVuOzBBPqmkewRZJqqD7460e+r+UYe6EqHsF4e6NWk9fQgfvEF6f
         SETeSYDLLnk/2SWGtF+duLUafg4LpgYNsxOs3a/xPvclWVBl2tD4bx0jbMZYDI4pjgdf
         bW+Wlan50IUo8UxD9Evz0hZdCERAGJQn2kAhy5Lh27TDNRy5Cnf/08pRepKpslw05o4c
         JWhw==
X-Forwarded-Encrypted: i=1; AJvYcCVduxoFaCcqGy8RaIl/VTMV2OgfnTrulElTv4pdTkNT5dUQ0cIO3r5KhZw35oy3HqJEtnlQX9l/dqlaZF19bQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy5alkhoH3ry7h8NDOxZsUcLXyYzltipisZXUN0r6H3U6/Xd+hN
	kGUPLIuIcLY3HzkJnS3QCafGXF3kOA5dREnQI0TRNRUeTK5wcW9pOpg2MiyFmi7pDO0=
X-Gm-Gg: ASbGnct4eAeDTrcyuPKIAbbUTLetcvqR6g6rHcHGwLpjCF7sxhGySIUDutuPY6ZBQOT
	DUfYYJrU6gGLrr9ODuwNYAs7RJHR2qaLCcKXzLZrLR1+vdR+0o/ZRO35oAA15XJeC05AQLxvotI
	QCjS4ROytwZ3jvuDnGBvHmKYQFaZzNm15m6l2VbfoDjKNA9wbOkAPx505dCKcP3iLR9K+rYHNx9
	rSD5hsMqd+YKzoHdR2S6shfWNEJ4QYOvok3O+1F2EQm5TnINmpjynux3lJ4Efr7S+dhP3xpErKo
	mq8J8Emua3CxGMsG7pTiO+MRl1Ka6//Rgdxv2xjUazim5tA8zbYUSWJzJzZZpaC9n376snYbh5c
	jBvYrUkOgblNvsxph9GL1cLjfWYXF8xboGWxnjg/WD//br6a7Sw==
X-Google-Smtp-Source: AGHT+IHjdABMGwP4YDfDRViIsowhzhMCSRqyKy2Co98dkY73R43zduNO7uR1yP8yqGGz5RWX6pbVAQ==
X-Received: by 2002:adf:e191:0:b0:3a8:30b8:cb93 with SMTP id ffacd0b85a97d-3b5f357895bmr11563876f8f.32.1752570105679;
        Tue, 15 Jul 2025 02:01:45 -0700 (PDT)
Received: from ?IPV6:2403:580d:fda1::299? (2403-580d-fda1--299.ip6.aussiebb.net. [2403:580d:fda1::299])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74eb9dd71ffsm12029434b3a.23.2025.07.15.02.01.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jul 2025 02:01:45 -0700 (PDT)
Message-ID: <3d24641b-7273-4658-ad73-691e621c4609@suse.com>
Date: Tue, 15 Jul 2025 18:31:41 +0930
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: PWM fan control not working with Rock5B and upstream kernel
From: Qu Wenruo <wqu@suse.com>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <e9ddcc05-e6db-49b0-aad6-c7873c38c427@suse.com>
 <5271313.GXAFRqVoOG@workhorse>
 <f33da910-7e83-40a0-bfcd-a6131a356358@suse.com>
Content-Language: en-US
Autocrypt: addr=wqu@suse.com; keydata=
 xsBNBFnVga8BCACyhFP3ExcTIuB73jDIBA/vSoYcTyysFQzPvez64TUSCv1SgXEByR7fju3o
 8RfaWuHCnkkea5luuTZMqfgTXrun2dqNVYDNOV6RIVrc4YuG20yhC1epnV55fJCThqij0MRL
 1NxPKXIlEdHvN0Kov3CtWA+R1iNN0RCeVun7rmOrrjBK573aWC5sgP7YsBOLK79H3tmUtz6b
 9Imuj0ZyEsa76Xg9PX9Hn2myKj1hfWGS+5og9Va4hrwQC8ipjXik6NKR5GDV+hOZkktU81G5
 gkQtGB9jOAYRs86QG/b7PtIlbd3+pppT0gaS+wvwMs8cuNG+Pu6KO1oC4jgdseFLu7NpABEB
 AAHNGFF1IFdlbnJ1byA8d3F1QHN1c2UuY29tPsLAlAQTAQgAPgIbAwULCQgHAgYVCAkKCwIE
 FgIDAQIeAQIXgBYhBC3fcuWlpVuonapC4cI9kfOhJf6oBQJnEXVgBQkQ/lqxAAoJEMI9kfOh
 Jf6o+jIH/2KhFmyOw4XWAYbnnijuYqb/obGae8HhcJO2KIGcxbsinK+KQFTSZnkFxnbsQ+VY
 fvtWBHGt8WfHcNmfjdejmy9si2jyy8smQV2jiB60a8iqQXGmsrkuR+AM2V360oEbMF3gVvim
 2VSX2IiW9KERuhifjseNV1HLk0SHw5NnXiWh1THTqtvFFY+CwnLN2GqiMaSLF6gATW05/sEd
 V17MdI1z4+WSk7D57FlLjp50F3ow2WJtXwG8yG8d6S40dytZpH9iFuk12Sbg7lrtQxPPOIEU
 rpmZLfCNJJoZj603613w/M8EiZw6MohzikTWcFc55RLYJPBWQ+9puZtx1DopW2jOwE0EWdWB
 rwEIAKpT62HgSzL9zwGe+WIUCMB+nOEjXAfvoUPUwk+YCEDcOdfkkM5FyBoJs8TCEuPXGXBO
 Cl5P5B8OYYnkHkGWutAVlUTV8KESOIm/KJIA7jJA+Ss9VhMjtePfgWexw+P8itFRSRrrwyUf
 E+0WcAevblUi45LjWWZgpg3A80tHP0iToOZ5MbdYk7YFBE29cDSleskfV80ZKxFv6koQocq0
 vXzTfHvXNDELAuH7Ms/WJcdUzmPyBf3Oq6mKBBH8J6XZc9LjjNZwNbyvsHSrV5bgmu/THX2n
 g/3be+iqf6OggCiy3I1NSMJ5KtR0q2H2Nx2Vqb1fYPOID8McMV9Ll6rh8S8AEQEAAcLAfAQY
 AQgAJgIbDBYhBC3fcuWlpVuonapC4cI9kfOhJf6oBQJnEXWBBQkQ/lrSAAoJEMI9kfOhJf6o
 cakH+QHwDszsoYvmrNq36MFGgvAHRjdlrHRBa4A1V1kzd4kOUokongcrOOgHY9yfglcvZqlJ
 qfa4l+1oxs1BvCi29psteQTtw+memmcGruKi+YHD7793zNCMtAtYidDmQ2pWaLfqSaryjlzR
 /3tBWMyvIeWZKURnZbBzWRREB7iWxEbZ014B3gICqZPDRwwitHpH8Om3eZr7ygZck6bBa4MU
 o1XgbZcspyCGqu1xF/bMAY2iCDcq6ULKQceuKkbeQ8qxvt9hVxJC2W3lHq8dlK1pkHPDg9wO
 JoAXek8MF37R8gpLoGWl41FIUb3hFiu3zhDDvslYM4BmzI18QgQTQnotJH8=
In-Reply-To: <f33da910-7e83-40a0-bfcd-a6131a356358@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_020147_603284_870C049B 
X-CRM114-Status: GOOD (  35.02  )
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

CgrlnKggMjAyNS83LzE1IDE4OjE0LCBRdSBXZW5ydW8g5YaZ6YGTOgo+IAo+IAo+IOWcqCAyMDI1
LzcvMTUgMTc6MTksIE5pY29sYXMgRnJhdHRhcm9saSDlhpnpgZM6Cj4+IE9uIFR1ZXNkYXksIDE1
IEp1bHkgMjAyNSAwNjoxMDo0NSBDZW50cmFsIEV1cm9wZWFuIFN1bW1lciBUaW1lIFF1IAo+PiBX
ZW5ydW8gd3JvdGU6Cj4+PiBIaSwKPj4+Cj4+PiBNeSBSb2NrNUIgYm9hcmQgaXMgcnVubmluZyBl
ZGstcmszNTg4IGZpcm13YXJlIGFuZCAoYWxtb3N0KSB1cHN0cmVhbQo+Pj4ga2VybmVsICg2LjE0
LjYga2VybmVsIGZyb20gQXJjaGxpbnV4QVJNKSwgdXNpbmcgdXBzdHJlYW0gZHRicyAodGhlCj4+
PiBmaXJtd2FyZSBpcyBhbHNvIHN3aXRjaGVkIHRvIGRldmljZS10cmVlIGJvb3QgbW9kZSkKPj4K
Pj4gQ29uc2lkZXIgdXNpbmcgbWFpbmxpbmUgdS1ib290IGluc3RlYWQuIEkgdGhpbmsgdGhlIG9u
bHkgb25lcyB3aG8KPj4gaW5zaXN0IG9uIGVkazIgZm9ya3MgYXJlIHRoZSBCU0QgcGVvcGxlLCBh
cyB0aGV5IGRvbid0IHdhbnQgdG8KPj4gd3JpdGUgZGV2aWNlIGRyaXZlcnMuIExpbnV4IGhhcyBk
cml2ZXJzLCBzbyBpbnZlbnRpbmcgVUVGSSBhYnN0cmFjdGlvbnMKPj4gZm9yIHRoaW5ncyBwcm9i
YWJseSBvbmx5IG1ha2VzIHlvdXIgZXhwZXJpZW5jZSB3b3JzZS4KPiAKPiBXZWxsLCBoYXZpbmcg
c29tZXRoaW5nIG1vcmUgdXNlci1mcmllbmRseSBhbmQgbW9yZSBzaW1pbGFyIHRvIGEgCj4gdHJh
ZGl0aW9uYWwgUEMgc2V0dXAgaXMgZGVmaW5pdGVseSBtb3JlIGF0dHJhY3RpdmUgdG8gZW5kIHVz
ZXJzLgo+IAo+Pgo+PiBLZXJuZWwgNi4xNCBpcyBhbHNvIHF1aXRlIGEgYml0IGJlaGluZCBhbmQg
bm90IHN1cHBvcnRlZCBieSB1cHN0cmVhbSwKPj4geW91J2xsIGxpa2VseSBoYXZlIGEgYmV0dGVy
IGV4cGVyaWVuY2UgY29tcGlsaW5nIGEga2VybmVsIHlvdXJzZWxmCj4+IHVzaW5nIGRlZmNvbmZp
ZyBhcyB0aGUgYmFzZS4gQUxBUk0gbGlrZXMgdG8gcm9sbCBkaWNlIHdoZW4gaXQgY29tZXMgdG8K
Pj4gdGhlaXIga2VybmVsIGNvbmZpZyBhbmQgdGhlbiBub3QgdXBkYXRlIHRoZWlyIGtlcm5lbHMg
Zm9yIGhhbGYgYSB5ZWFyLgo+IAo+IFRoYW5rZnVsbHkgdGhlIGxhdGVzdCBvbmUgaXMgNi4xNS42
LCBhbmQgdW5mb3J0dW5hdGVseSBpdCBkb2Vzbid0IG1ha2UgYSAKPiBkaWZmZXJlbmNlLgo+IAo+
IEknbSBmaW5lIGNvbXBpbGluZyBrZXJuZWxzIGZvciBteSBWTXMgdG8gcnVuIHRlc3RzLCBidXQg
Zm9yIHRoZSBob3N0IEknZCAKPiBsZWF2ZSB0aGlzIGFzIHRoZSBsYXN0IHJlc29ydCBtZXRob2Qu
Cj4gCj4gSSdsbCB0cnkgdGhlIFVib290IGlmIHJlcXVpcmVkLCBidXQgbm8gcHJlLWNvbXBpbGVk
IHVwc3RyZWFtIG9uZSBpcyBub3QgCj4gcmVhbGx5IGludml0aW5nIGVuZCB1c2Vycy4KPiAKPj4K
Pj4+Cj4+PiBCZWZvcmUgdGhhdCBJJ20gdXNpbmcgQUNQSSBtb2RlIHRodXMgbm8gUE1XIHN1cHBv
cnQsIGJ1dCB0aGUgZmlybXdhcmUncwo+Pj4gZmFuIGNvbnRyb2wgaXMgd29ya2luZyBwcm9wZXJs
eSBhbHRob3VnaCBydW5uaW5nIGF0IGEgZml4ZWQgcnBtIHNldHRpbmcuCj4+Pgo+Pj4gQnV0IGFm
dGVyIHN3aXRjaGluZyB0byB0aGUgdXBzdHJlYW0ga2VybmVsIGFuZCBkZXZpY2UtdHJlZSBtb2Rl
LCB0aGUgcHdtCj4+PiBmYW4gY29udHJvbCBuZXZlciB3b3Jrcy4KPj4KPj4gQ2hlY2sgL3N5cy9j
bGFzcy9wd20sIGV4cG9ydCB0aGUgcHdtIGFzc29jaWF0ZWQgd2l0aCB0aGUgZmFuIGluIHRoZSBE
VCwKPj4gdGhlbiBtYW51YWxseSBzZXQgYSBwZXJpb2QgYW5kIGR1dHkgY3ljbGUgdGhhdCBjb3Jy
ZXNwb25kcyB0byBhIHBlcmlvZAo+PiB0aGUgZmFuIHN1cHBvcnRzLiBJZiBpdCBkb2Vzbid0IHNw
aW4sIHRoZW4gdGhlIHByb2JsZW0gaXMgbGlrZWx5IHRoYXQKPj4gdGhlcmUgaXMgYSBkaXNjb25u
ZWN0IGJldHdlZW4gd2hhdCBMaW51eCB0aGlua3MgdGhlIFBXTSBzaWduYWwgaXMgYW5kCj4+IHdo
YXQgaXQgYWN0dWFsbHkgaXMuCj4gCj4gTWluZCB0byBleHBsYWluIGl0IGEgbGl0dGxlIG1vcmU/
Cj4gCj4gTm90IGFuIGV4cGVydCBvbiBkZXZpY2UtdHJlZSwgSSBub3JtYWxseSB1c2UgdGhlIGJv
YXJkIGp1c3QgYXMgYSAKPiBoZWFkbGVzcyBWTSBob3N0Lgo+IAo+Pgo+PiBJJ20gZ3Vlc3Npbmcg
dGhlIHByb2JsZW0gaGVyZSBpcyB0aGF0IHlvdXIgZmlybXdhcmUgb2YgY2hvaWNlIGxlYXZlcwo+
PiB0aGUgY2xvY2sgdHJlZSBpbiBhIGJpdCBvZiBhIHN0YXRlLCBhbmQgdGhlIFBXTSBpcyBjbG9j
a2VkIGZyb20KPj4gc29tZXRoaW5nIHRoYXQncyBpbmNvcnJlY3QuIElmIGl0J3Mgbm90IHRoZSBy
aWdodCBjbG9jayBwZXJpb2QgZm9yCj4+IHRoZSBmYW4sIGl0IHdvbid0IHNwaW4uCj4gCj4gQnV0
IG15IGJvb3Rsb2FkZXIgKHN5c3RlbWQtYm9vdCkgaXMgZXhwbGljaXRseSBsb2FkaW5nIHRoZSBk
dGIsIG5vdCAKPiByZWFsbHkgcmVseWluZyBvbiB0aGUgb25lIHByb3ZpZGVkIGJ5IHRoZSBmaXJt
d2FyZS4KPiAKPiBPciB0aGF0IGlzIG5vdCByZWFsbHkgZW5vdWdoIGZvciB0aGlzIGNhc2U/CgpJ
J20gYSB0b3RhbCBpZGlvdCwgdGhlIHRpbWluZyB3aGVuIHRoZSBQV00gZG9lc24ndCB3b3JrIGlz
IG5vdCB0aGUgCmNoYW5nZSBmcm9tIEFDUEkgdG8gZGV2aWNlLXRyZWUgYm9vdCBtb2RlLCBidXQg
dGhlIHRpbWluZyBJIHN3aXRjaGVkIApmcm9tIGZhbmxlc3MgY2FzZSB0byB0aGUgUFdNIGZhbiBh
Z2Fpbi4KCkFuZCBJIHBsdWdnZWQgdGhlIDJwaW4gZmFuIGNvbm5lY3RvciB0byB0aGUgV1JPTkcg
UE9SVCEKCkl0J3MgY29ubmVjdGVkIHRvIHRoZSBSVEMgYmF0dGVyeSBwb3J0LCBJIGRpZG4ndCBu
b3RpY2UgdW50aWwgSSByZWNoZWNrIAp0aGUgbmFtZSBvZiB0aGUgY29ubmVjdG9yIG1pbnV0ZXMg
YWdvLgoKUmVhbGx5IHNvcnJ5IGZvciB3YXN0aW5nIHlvdXIgdGltZSBvbiBzdWNoIGEgc3R1cGlk
IGVycm9yLi4uCgpOb3cgaXQncyB3b3JraW5nIGFnYWluIHdpdGhvdXQgYW55dGhpbmcgcHJvYmxl
bS4KCj4gCj4gVGhhbmtzLAo+IFF1Cj4gCj4+Cj4+IEEgbG9naWMgYW5hbHl6ZXIgd291bGQgYmUg
YWJsZSB0byB0ZWxsIHlvdSBkZWZpbml0aXZlbHkgd2hldGhlciB0aGF0J3MKPj4gdGhlIGNhc2Uu
Cj4+Cj4+Pgo+Pj4gYHNlbnNvcnNgIGNvbW1hbmQgZGV0ZWN0cyB0aGUgZmFuLCBhbmQgdGhlIHB3
bSBzZWVtcyB0byBwcm9wZXJseQo+Pj4gZm9sbG93aW5nIHRoZSB0ZW1wZXJhdHVyZSwgYnV0IHRo
ZSBwaHlzaWNhbCBmYW4ganVzdCBkbyBub3Qgc3BpbiBhdCBhbGw6Cj4+Pgo+Pj4gY2VudGVyX3Ro
ZXJtYWwtdmlydHVhbC0wCj4+PiBBZGFwdGVyOiBWaXJ0dWFsIGRldmljZQo+Pj4gdGVtcDE6wqDC
oMKgwqDCoMKgwqAgKzgwLjTCsEMKPj4+Cj4+PiBiaWdjb3JlMl90aGVybWFsLXZpcnR1YWwtMAo+
Pj4gQWRhcHRlcjogVmlydHVhbCBkZXZpY2UKPj4+IHRlbXAxOsKgwqDCoMKgwqDCoMKgICs4NC4x
wrBDCj4+Pgo+Pj4gcGFja2FnZV90aGVybWFsLXZpcnR1YWwtMAo+Pj4gQWRhcHRlcjogVmlydHVh
bCBkZXZpY2UKPj4+IHRlbXAxOsKgwqDCoMKgwqDCoMKgICs4MS4zwrBDCj4+Pgo+Pj4gcHdtZmFu
LWlzYS0wMDAwCj4+PiBBZGFwdGVyOiBJU0EgYWRhcHRlcgo+Pj4gcHdtMTrCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIDEyOCXCoCBNQU5VQUwgQ09OVFJPTCA8PDwKPj4+Cj4+PiBncHVfdGhlcm1hbC12
aXJ0dWFsLTAKPj4+IEFkYXB0ZXI6IFZpcnR1YWwgZGV2aWNlCj4+PiB0ZW1wMTrCoMKgwqDCoMKg
wqDCoCArNzkuNcKwQwo+Pj4KPj4+IGxpdHRsZWNvcmVfdGhlcm1hbC12aXJ0dWFsLTAKPj4+IEFk
YXB0ZXI6IFZpcnR1YWwgZGV2aWNlCj4+PiB0ZW1wMTrCoMKgwqDCoMKgwqDCoCArODIuMsKwQwo+
Pj4KPj4+IGJpZ2NvcmUwX3RoZXJtYWwtdmlydHVhbC0wCj4+PiBBZGFwdGVyOiBWaXJ0dWFsIGRl
dmljZQo+Pj4gdGVtcDE6wqDCoMKgwqDCoMKgwqAgKzgzLjLCsEMKPj4+Cj4+Pgo+Pj4gSSdtIHdv
bmRlcmluZyBpcyB0aGlzIGEgYnVnIGluIHRoZSB1cHN0cmVhbSBQV00gY29kZSBvciBzb21ldGhp
bmcgZWxzZQo+Pj4gaXMgbWlzc2luZyBwcmV2ZW50aW5nIHRoZSBmYW4gZnJvbSB3b3JraW5nIHBy
b3Blcmx5Lgo+Pgo+PiBUaGUgdXBzdHJlYW0gUFdNIGNvZGUgZGVmaW5pdGVseSB3b3JrcywgYW5k
IGhhcyB3b3JrZWQgZm9yIGV2ZXJ5Cj4+IFJvY2tjaGlwIGRldmljZSBzbyBmYXIuIFRoZSBQV00g
ZmFuIG9uIG15IFJPQ0sgNUIgKG1haW5saW5lIHUtYm9vdCwKPj4gbWFpbmxpbmUga2VybmVsLCBt
YWlubGluZSBURi1BKSB3b3JrcyBqdXN0IGZpbmUuCj4+Cj4+Pgo+Pj4gVGhhbmtzLAo+Pj4gUXUK
Pj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
Pj4gTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4+PiBMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCj4+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCj4+Pgo+Pgo+Pgo+Pgo+Pgo+IAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
