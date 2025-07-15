Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70463C83F17
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jul 2025 04:36:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:From:To:MIME-Version:Date:Message-ID:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SPsuC8xzRgf4kmlhdAkUCjIGhFL8AOaYT97X5LZZHo0=; b=LU/Os2CqXD7mBm
	2XTbheg27m/BvH8QCBzCyndXZjJEwX3smy3MEtKDs4A35ZDma7yti4pTeY2XYHZlbSlo5mPOTd/c9
	bgr+G1HqbUKib9BVsP77eOPn0uV39qJEcSEVAmlHxzvG1ohrk62dJ+XiTDxMz2YPduSwNzLB/tX3v
	w8d8/aHSr8Tp8rir3zE23x9DKpLc9uMfGJji+sJcJKBVYNj3h5Qs6QM6N2L0YVwr4c976Mb3eMpYX
	jCi4EpVR90bGgmDXl2Aw0WkffFI6zU21ueU43UNgZ+mp9dx3yQClGpXCWjkqiYZu9AOR7AObFAmEY
	AqY4p89Uo4ezyhcD6p3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubXPF-000000041Xe-0xxw;
	Tue, 15 Jul 2025 04:36:41 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubX0G-00000003zC2-0xcV
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Jul 2025 04:10:53 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-45610582d07so15057055e9.0
        for <linux-rockchip@lists.infradead.org>; Mon, 14 Jul 2025 21:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1752552650; x=1753157450; darn=lists.infradead.org;
        h=content-transfer-encoding:autocrypt:subject:from:to
         :content-language:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8/N77NWhujGmD6BCrmWvWG9O24/CxYwoKzySg4bes38=;
        b=fYvDTKHMTPbg6vOiWYH0O2MXidLxGg32TGtJepoVQ7Nbpn8rcC8JebxYHei3HBxXWc
         c3wNC4Tw8zADkbR9A9LJs6lwulbwT5UJ0yr1yYEpvtVNLEiSYlddrJ9JGUQbqzwbM3xz
         d3v/X+EGnj/+30jbAyPH9dWW//EAJROXWixT5vrctD/aFPZ4Y0AkLp8JTgda4HvAyLem
         +Sgn+bou3uX64mDwL/E4Gq1IpCEIQ5Y4392ZzFt3XrnyJ/zlQ1L9+b83hP6CEbjO0AwX
         UzucqOmg0gmpnawoEo91O+FJcH/AL4Vk5lvdoIu4QHLeznRIxuqPnP/YZOGojZwOHor4
         9sYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752552650; x=1753157450;
        h=content-transfer-encoding:autocrypt:subject:from:to
         :content-language:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8/N77NWhujGmD6BCrmWvWG9O24/CxYwoKzySg4bes38=;
        b=INmx6IJR+6O/+G0ksu+t14Nh0GKKSeIMv0do0fSif9iYTYVegub2FvGmcpv3eUzU8a
         DBRMUtyJE9fJkKetKGKtCmcgkQxFaylN8HZMx1WqTkZYICExBf8zuSxj8RBqNMwBbDLV
         uyJmECEHpzTxxVk9mCdppHS2y/StvVSV/qgpwnUuEoResQdgC8YBB2l7fLohn+IZ92Qw
         GfjJr1xGskZdOhkSki1BrCqn75S+dxihGP9IA4LbjeAbVImYPEN9OCT845+l8BqQA02/
         xeoIguh4JA6DAVLktdNLtULdL6ZMHvhIg3GiZ7F1Lrrwv7XQ2UKqyJRsUXjB8TNEJqOp
         iqLw==
X-Forwarded-Encrypted: i=1; AJvYcCWTFP9zMjyFuFyRUBvWdS7bkwHZpb8tjqS58/pm3tUmuP/MA97AaXgxBHNWJowTTO1lR+5tZKCGy/tkofC1eg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzw91o53ON/Pgurmjh4AdGd8JUqg8l4r52sa+VAOCPV+/RvgmDc
	EnhybYPeo4sDmFMZpGD/xquIplVWwzoc2figj7QGvymC0BcQB5JoLejdnSUB3CCIghk=
X-Gm-Gg: ASbGncs7re13SJHXbnFzAMQzecPzuIMYiIDpiugldMN19TYSuzST4gUFvzWw9fVxYLc
	qJBzS2o5LdnxV/izHTahdOLMfVoM/qq22QXFXwZQvXLnWKnRG2cS+n3CvsVlC8H+DmMwO18g4Bv
	R6buwQQx4f5MTcmgWh4DCtPRtyGoVeGBv4iLDjeu6WN8w725GXNaohZYnnrqgA7ccB3vUgYt6bZ
	fGCFqT2SWVeLFzCTSAeoPro99yGOg4y2Dad4fvuYu+AoCAntYpMgyh4FROO/H0mX/meFsRPp80w
	xXBAGTSZiTV9tAiFohWMXxFQjfiWvIv40ze2OeVBAC7dQLBc/vw9W5wEy6YERrtSvRxx8alDV5h
	Bq3mT9HOip0o0YAzg9IF5IXpVFANbmrSWjyI7K+GGzx1FwP8VjA==
X-Google-Smtp-Source: AGHT+IGvcHSZDh9ZjzXQWSm9GBScOFQhnNwMoX+CCkuHiPctRXRfzwg0GlXRiOAgI5Ddff522EE/QQ==
X-Received: by 2002:a05:6000:2a85:b0:3a6:d296:feaf with SMTP id ffacd0b85a97d-3b5f188e9d1mr9916569f8f.24.1752552649887;
        Mon, 14 Jul 2025 21:10:49 -0700 (PDT)
Received: from ?IPV6:2403:580d:fda1::299? (2403-580d-fda1--299.ip6.aussiebb.net. [2403:580d:fda1::299])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b3bbe52cddesm11102271a12.6.2025.07.14.21.10.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 21:10:49 -0700 (PDT)
Message-ID: <e9ddcc05-e6db-49b0-aad6-c7873c38c427@suse.com>
Date: Tue, 15 Jul 2025 13:40:45 +0930
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
From: Qu Wenruo <wqu@suse.com>
Subject: PWM fan control not working with Rock5B and upstream kernel
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
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_211052_351524_4DB26E37 
X-CRM114-Status: UNSURE (   7.73  )
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

SGksCgpNeSBSb2NrNUIgYm9hcmQgaXMgcnVubmluZyBlZGstcmszNTg4IGZpcm13YXJlIGFuZCAo
YWxtb3N0KSB1cHN0cmVhbSAKa2VybmVsICg2LjE0LjYga2VybmVsIGZyb20gQXJjaGxpbnV4QVJN
KSwgdXNpbmcgdXBzdHJlYW0gZHRicyAodGhlIApmaXJtd2FyZSBpcyBhbHNvIHN3aXRjaGVkIHRv
IGRldmljZS10cmVlIGJvb3QgbW9kZSkKCkJlZm9yZSB0aGF0IEknbSB1c2luZyBBQ1BJIG1vZGUg
dGh1cyBubyBQTVcgc3VwcG9ydCwgYnV0IHRoZSBmaXJtd2FyZSdzIApmYW4gY29udHJvbCBpcyB3
b3JraW5nIHByb3Blcmx5IGFsdGhvdWdoIHJ1bm5pbmcgYXQgYSBmaXhlZCBycG0gc2V0dGluZy4K
CkJ1dCBhZnRlciBzd2l0Y2hpbmcgdG8gdGhlIHVwc3RyZWFtIGtlcm5lbCBhbmQgZGV2aWNlLXRy
ZWUgbW9kZSwgdGhlIHB3bSAKZmFuIGNvbnRyb2wgbmV2ZXIgd29ya3MuCgpgc2Vuc29yc2AgY29t
bWFuZCBkZXRlY3RzIHRoZSBmYW4sIGFuZCB0aGUgcHdtIHNlZW1zIHRvIHByb3Blcmx5IApmb2xs
b3dpbmcgdGhlIHRlbXBlcmF0dXJlLCBidXQgdGhlIHBoeXNpY2FsIGZhbiBqdXN0IGRvIG5vdCBz
cGluIGF0IGFsbDoKCmNlbnRlcl90aGVybWFsLXZpcnR1YWwtMApBZGFwdGVyOiBWaXJ0dWFsIGRl
dmljZQp0ZW1wMTogICAgICAgICs4MC40wrBDCgpiaWdjb3JlMl90aGVybWFsLXZpcnR1YWwtMApB
ZGFwdGVyOiBWaXJ0dWFsIGRldmljZQp0ZW1wMTogICAgICAgICs4NC4xwrBDCgpwYWNrYWdlX3Ro
ZXJtYWwtdmlydHVhbC0wCkFkYXB0ZXI6IFZpcnR1YWwgZGV2aWNlCnRlbXAxOiAgICAgICAgKzgx
LjPCsEMKCnB3bWZhbi1pc2EtMDAwMApBZGFwdGVyOiBJU0EgYWRhcHRlcgpwd20xOiAgICAgICAg
ICAgIDEyOCUgIE1BTlVBTCBDT05UUk9MIDw8PAoKZ3B1X3RoZXJtYWwtdmlydHVhbC0wCkFkYXB0
ZXI6IFZpcnR1YWwgZGV2aWNlCnRlbXAxOiAgICAgICAgKzc5LjXCsEMKCmxpdHRsZWNvcmVfdGhl
cm1hbC12aXJ0dWFsLTAKQWRhcHRlcjogVmlydHVhbCBkZXZpY2UKdGVtcDE6ICAgICAgICArODIu
MsKwQwoKYmlnY29yZTBfdGhlcm1hbC12aXJ0dWFsLTAKQWRhcHRlcjogVmlydHVhbCBkZXZpY2UK
dGVtcDE6ICAgICAgICArODMuMsKwQwoKCkknbSB3b25kZXJpbmcgaXMgdGhpcyBhIGJ1ZyBpbiB0
aGUgdXBzdHJlYW0gUFdNIGNvZGUgb3Igc29tZXRoaW5nIGVsc2UgCmlzIG1pc3NpbmcgcHJldmVu
dGluZyB0aGUgZmFuIGZyb20gd29ya2luZyBwcm9wZXJseS4KClRoYW5rcywKUXUKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
