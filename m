Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BDD4EF99CA
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Feb 2026 02:17:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hm5n34X4yzd2YWiaG/S34OmYnavg6x/w6ZDVBDSP4PQ=; b=2+jsegWxsqfmX5
	16tM1niV18FAMAeSAoh13SfxTF0Zir5PwwbaKAT3iasiDKfTiyNRpRzshOSanndc2T8gMhbk5xC3i
	uhKyvRkqnCxVRUxwkHJXzxMuSH4dvRjgcKr66pDLL0LIAJgeygGMfRi291lU3YPZIjZEWfksUxSn7
	H5IGIfAnLlC5oragsCe2nFOMc5sf1Bf26AknGSqnRnq32rKZ1fdMa/+ew33FHULR/txxhHSEy92OT
	Cpf0Lz5Kver1hnk60/k8YUqgn0f94RkHhHjRWpf0z6Rh6WBS5Qd1EMaIdsGJvjuImJlgipNiB92J0
	ceGEenfqA+vekmd0BcjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vr5EB-000000049Uc-06T4;
	Sat, 14 Feb 2026 02:17:47 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vr5E6-000000049SK-0Hej
	for linux-rockchip@lists.infradead.org;
	Sat, 14 Feb 2026 02:17:45 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4801c2fae63so12276145e9.2
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Feb 2026 18:17:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771035460; x=1771640260; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=L7kXqefz6Mz84tkpvy0FFhVFi9KVDmRut/+pi1Uax3Y=;
        b=fPnpv0OcixEBLKAtAJ8EB9Y0SVhZ4DcjDiFSkSGj7kOE+9aML9XEl0RWIhUggNQ9u4
         ApycLdhQu4ogPsuVN70rtETsV+YIA/GCEnXDWp3ZfJ3OscAlaBdKg5RDSGm3KtoIy8Ik
         66ukupWhta3ArRWGcVKxOdLtPO6c7HYGwLUyp7cqfM5/h7Evz8XpxzEBIfgSY/pU0zJz
         nGBBRrikXvs1vbjFGz9VwAymuxw23nGF5INrOG9vlAWA0guuDW4DR7rXrsfezcR0lwOi
         8wUcGOx15uAjM3cKUh7xKOP6rSnUe/xA2OQd0hRDuOIGqSkaQNaWb4znapOac+dubKxm
         U/1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771035460; x=1771640260;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L7kXqefz6Mz84tkpvy0FFhVFi9KVDmRut/+pi1Uax3Y=;
        b=cZJyG/qmsNBfFqUDzoSHAH51lL0Q/Tl8mL4S4fwaZs7ivzVre91HwLzHxLw7UXQ/6i
         4lWJLiQ5n98q3/YWx6miz90vbMmoUP+9nJrytpbJzbevL04b0yv2dVC0Ol/YgMdBM1bW
         kEPrAzQefEtYnIE1m4spwL8dOQfiMnn5CLu2jyigr5k/DCw1d6OX7/E15j56qtdduSaG
         GMQ8NbiqCod2a0wPv3lbaTEazkRcRvPhm1kXDdwHJiQ9ADGpH21zA4tGtymI6CIhK3gY
         gZvZBz74qElUUyFFdmZ1Dm6iOJl1j5SbENd7L+FIkn6XHtWF9ojF93VU0VV/HaILcizQ
         IT5Q==
X-Forwarded-Encrypted: i=1; AJvYcCWHxVHu0q6a6U5EsZ5VynlTmqTI89dZNN/WbU7f4usOliwkNt/wyW9jLBxtQEGoV1AR3F593UtBnz1ClxIfQw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxQzld+bxgf9qfwuqBoIf9wz5bZ+pCL9DmQZbagN97fmAYOyRL5
	AvQIhmk/rZoHhCj8nhxlSssQJ0BXz9WGyEBtFDADMpVldVMWoTk4JOKG
X-Gm-Gg: AZuq6aIPWYfeDZmbaB8QNLFPY+okej3DLi56JN4fEAlFR2DfhRwIUbnzII+jHY55TQf
	o9EBRLcP5swJShKjsrSpMbNarxMPoXbEvWL/zuFq9YTn41PoXbkF9tWFGTxY3zRFjYYOE84qaNz
	udD/q8RuO9SIYfTe7zuM7YYU6+L5i7Hlf4dVKh4HqoC0G1qPH/MVoqb+K+Oie0Qn2CLuJWEdNir
	pc8Y6WjRoNhRQ1k07/SjWEIZqnzekQmVUevTwA6Id3M3Y/JJJhe1yOPsHYivc8LIvTGhx6MA0y0
	bm0uTRpapKe3MVKH3WI9dYyBMB5VsPi4BOUm+d6nBT9sP3DJ7H8yBO4v7Q9wQy11qjkKiukG13B
	rmAKSnyMnqW/djN+tACvjcPSZwxW9UcXlM/GY8eV0P+LUkpdib3wl6DjLdNkeva196I6sUKrBZH
	Afnu0CnISQI/VA+mlja6ai
X-Received: by 2002:a05:600c:37c6:b0:475:de12:d3b5 with SMTP id 5b1f17b1804b1-483710960dcmr70601475e9.34.1771035459856;
        Fri, 13 Feb 2026 18:17:39 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a53:6b71::1002])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796acffcesm8608308f8f.37.2026.02.13.18.17.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 18:17:38 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alchark@gmail.com,
	dsimic@manjaro.org,
	andyshrk@163.com,
	jonas@kwiboo.se,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH v5 0/3] board: rockchip: add OneThing Edge Cube series
Date: Sat, 14 Feb 2026 10:17:13 +0800
Message-ID: <20260214021719.620752-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_181742_127725_029B9403 
X-CRM114-Status: GOOD (  13.76  )
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

VGhpcyBzZXJpZXMgYWRkcyBzdXBwb3J0IGZvciB0aGUgT25lVGhpbmcgRWRnZSBDdWJlIHNlcmll
cywgUm9ja2NoaXAgClJLMzU2Ni1iYXNlZCBQQ0ROIChQMlAgQ29udGVudCBEZWxpdmVyeSBOZXR3
b3JrKSBkZXZpY2VzIG9yaWdpbmFsbHkgCm1hcmtldGVkIGJ5IE9uZVRoaW5nIFRlY2guCgpUaGUg
VjUgcGF0Y2ggaW5sY3VkZXMgc29tZSBkZXZpY2UgdHJlZSBhZGp1c3RtZW50cywgZm9sbG93aW5n
IEt3aWJvbydzCnN1Z2dlc3Rpb25zLgoKVGhlIFY0IHBhdGNoIGluY2x1ZGVzIG1pbm9yIGltcHJv
dmVtZW50cy4KClRoZSBWMyBwYXRjaCBtZXJnZXMgdGhlIHNlcGFyYXRlIGR0cyBmaWxlcyBmb3Ig
T0VDIGFuZCBPRUMtdHVyYm8sCmZvbGxvd2luZyBEcmFnYW4gU2ltaWMncyBzdWdnZXN0aW9uLgoK
VGhlIFYyIHBhdGNoIGFkZHMgYSBuZXcgZGV2aWNlLCB0aGUgT25lVGhpbmcgT0VDLiBUb2dldGhl
ciB3aXRoIHRoZSAKVjEgcGF0Y2ggT25lVGhpbmcgT0VDLXR1cmJvLCB0aGVzZSB0d28gZGV2aWNl
cyBzaGFyZSBpZGVudGljYWwgaGFyZHdhcmUgCnNwZWNpZmljYXRpb25zIGV4Y2VwdCBmb3IgdGhl
IFJBTSBjYXBhY2l0eSwgZW5hYmxpbmcgY29udmVuaWVudCBzdXBwb3J0CmltcGxlbWVudGF0aW9u
LgoKVGhlIFYxIHBhdGNoIHdhcyBzdWJtaXR0ZWQgcXVpdGUgc29tZSB0aW1lIGFnbyBhbmQgaXMg
bm93IGluIGFuIGFyY2hpdmVkCnN0YXRlWzFdLiBpdCBoYXMgbm90IGJlZW4gcHJvY2Vzc2VkIGR1
ZSB0byBzY2hlZHVsaW5nIGNvbmZsaWN0cyDigJMKYXBvbG9naWVzIGZvciB0aGlzLgoKQ2hhbmdl
cyBpbiB2NToKLSBBZGQgbWlzc2luZyBwaW5jdHJsIGZvciBMRURzIGFuZCBFVEgtUEhZIHJlc2V0
cy4KLSBVc2luZyBncGlvcyBwcm9wZXJ0eSBpbnN0ZWFkIHBmIGdwaW8gcHJvcGVydHkgaW4gcHdt
LXJldWdsYXRvci4KLSBBZGp1c3QgYW5kIHVuaWZ5IHRoZSBvcmRlciBvZiByZWd1bGF0b3ItKiBw
cm9wZXJ0aWVzLgotIERyb3AgcngvdHgtZGVsYXkgcHJvcGVydGllcyBpbiB0aGUgZ21hYzEgbm9k
ZS4KLSBVc2luZyBQV01fUE9MQVJJVFlfSU5WRVJURUQgZm9yIHB3bXMgcHJvcGVydHkgaW5zdGVh
ZCBvZiB0aGUgdHJhaWxpbmcgMS4KLSBMaW5rIHRvIHY0OiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9hbGwvMjAyNjAyMDQxMzI3MDAuMzI5ODk0LTEtamVycnlzdGV2ZTExMDFAZ21haWwuY29tLwoK
Q2hhbmdlcyBpbiB2NDoKLSBVc2UgYSB1bmlmaWVkIGNvbXBhdGlibGUgbmFtZSBmb3IgT0VDIGFu
ZCBPRUMtdHVyYm8uCi0gRHJvcCB0aGUgInNlcmllcyIgc3RyaW5nIGZyb20gdGhlIGJvYXJkIGR0
YiBuYW1lLgotIFVzZSBhIHNlbGYtZGVzY3JpcHRpdmUgbW9kZWwgbmFtZSBmb3IgdGhlIGR0Yi4K
LSBMaW5rIHRvIHYzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjAyMDIxNTA0Mzcu
MjcwNTY3LTEtamVycnlzdGV2ZTExMDFAZ21haWwuY29tLwoKQ2hhbmdlcyBpbiB2MzoKLSBVc2Ug
YSBzaW5nbGUgZGV2aWNlIHRyZWUgZm9yIGJvdGggT0VDIGFuZCBPRUMtdHVyYm8uCi0gQWxpZ24g
dGhlIGNvbXBhdGlibGUgc3RyaW5ncyBpbiBkdC1iaW5kaW5ncyBhbmQgZGV2aWNlIHRyZWUuCi0g
TGluayB0byB2MjogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwMTMxMTUzMTA2LjMx
NzIzLTEtamVycnlzdGV2ZTExMDFAZ21haWwuY29tLwoKQ2hhbmdlcyBpbiB2MjoKLSBGaXggdHlw
byBpbiB2ZW5kb3ItcHJlZml4ZXMuCi0gU2ltcGxpZnkgY29tcGFueSBhbmQgZGV2aWNlIG5hbWVz
LgotIEFkZCB0aGUgbmV3IGRldmljZSBPRUMgYXMgcGFydCBvZiB0aGUgT25lVGhpbmcgRWRnZSBD
dWJlIHNlcmllcyBmb3Igc3VwcG9ydC4KLSBTZXQgZGlzcGxheS1zdWJzeXN0ZW0gbm9kZSB0byAi
ZGlzYWJsZWQiIGluc3RlYWQgb2YgdXNpbmcgImRlbGV0ZS1ub2RlIi4KLSBVc2luZyBnZW5lcmlj
IG5vZGUgbmFtZXMgZm9yIGxlZHMuCi0gRm9sbG93IERUUyBjb2RlaW5nIHN0eWxlIGluIHZjYzV2
MF91c2JfaG9zdF9lbiBwaW5jdHJsIG5vZGUuCi0gTW9kaWZ5IHRoZSBwaHlfbW9kZSBvZiBHTUFD
IGZyb20gcmdtaWkgdG8gcmdtaWktaWQuCi0gQWRqdXN0IGRldmljZSB0cmVlIG5vZGUgb3JkZXJp
bmcgdG8gZm9sbG93IGNvZGUgc3R5bGUuCi0gTGluayB0byB2MTogaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvYWxsLzIwMjUwNzEzMTYzMjU1LjE2MzY2OS0xLWplcnJ5c3RldmUxMTAxQGdtYWlsLmNv
bS8KClsxXSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtcm9ja2No
aXAvY292ZXIvMjAyNTA3MTMxNjMyNTUuMTYzNjY5LTEtamVycnlzdGV2ZTExMDFAZ21haWwuY29t
LwoKSnVuIFlhbiAoMyk6CiAgZHQtYmluZGluZ3M6IHZlbmRvci1wcmVmaXhlczogQWRkIFNoZW56
aGVuIE9uZVRoaW5nIFRlY2hub2xvZ2llcyBDby4sCiAgICBMdGQuCiAgZHQtYmluZGluZ3M6IGFy
bTogcm9ja2NoaXA6IEFkZCBPbmVUaGluZyBFZGdlIEN1YmUgc2VyaWVzCiAgYXJtNjQ6IGR0czog
cm9ja2NoaXA6IEFkZCBPbmVUaGluZyBFZGdlIEN1YmUgc2VyaWVzCgogLi4uL2RldmljZXRyZWUv
YmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwgICAgIHwgICA1ICsKIC4uLi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3ZlbmRvci1wcmVmaXhlcy55YW1sICB8ICAgMiArCiBhcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL01ha2VmaWxlICAgICAgICAgfCAgIDEgKwogLi4uL3JvY2tjaGlwL3JrMzU2Ni1v
bmV0aGluZy1lZGdlLWN1YmUuZHRzICAgIHwgMzQyICsrKysrKysrKysrKysrKysrKwogNCBmaWxl
cyBjaGFuZ2VkLCAzNTAgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LW9uZXRoaW5nLWVkZ2UtY3ViZS5kdHMKCi0tIAoy
LjUzLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
