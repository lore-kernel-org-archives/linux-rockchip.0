Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C58606A335
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 15:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=pzkpZJq+;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=p1ILuSim;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=ikeF37pR
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=g1AuTZzx5p4xu3dZ8dZfwxYe4V2IzAytmuVu+unTHMc=; b=pzkpZJq+6DZZVqhZ3oRtCLg8sq
	SeO62jvcDPy2jFHNLtERnSwhF2dzxusmVsoUqYehX64jOXc7a1RV+H3506ebAUI8NkPwFJ5gzxHi2
	AyYNhntb6qVrXPh5VZ0ecflvyI6HC1Va7v+hDbvZX/EsdwPbIaGg2kMGdv2QSY25TnZKMGtLWNoi3
	ulURfagrFXt3BB0AO1BMDGHmMYhgHNVu5aP7+cMs5iQhV8S+Fm9+y/6hFpmw9pnJ23J9vWWsMkGrf
	T6JYBYvkl6RI58KBPC+V8hfkubZnKyw4pUzrJuwCWe1UbeZZdIgfVTjRJIZyokGb9OSLaZzlWqTYt
	V/nCjVEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOzS1-00000009PhH-02q0;
	Thu, 05 Nov 2026 15:32:29 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOzRx-00000009PgT-4AVA
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Nov 2026 15:32:27 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A5EQVCK1657304
	for <linux-rockchip@lists.infradead.org>; Thu, 5 Nov 2026 15:32:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	o9aybnm6z6uCy7Z3S2M1SU/Xzgy17fe/G/KhASnMe+U=; b=p1ILuSim5deoO8ja
	3wphI/7Nsrgrqxx/+9uzSfHc6ihiO0isa17zG0dIcmjBGWCIGX3RU5A3vPW0Of+Z
	zSGCJNAB4ydNwylGt4IqRlyIdK772pN6VFyPJf+TIvRvvzawMEqD48Zufsy500lU
	VubhVlKSarv8F6EkCPH872vYZ3cSJoY89UoYVSApubdcnd6RDJO2UnKeGFvYYICp
	CuKFeG0Ccl/lQpZv6Fm8y6DNZpuRQfpmwRav889WXfIwZFdWPmmFg7moo53X1wDB
	OTdiorrPAVhsTwtpr+ft+Tf/Jg4bdcg9+1ooCmuyqK2aaebKn8G69z80h1MuY+9P
	Sgg0Gw==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hrq9f9fjc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 05 Nov 2026 15:32:24 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-5eaf1bb48b2so1606627e0c.3
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Nov 2026 07:32:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793892744; x=1794497544; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=o9aybnm6z6uCy7Z3S2M1SU/Xzgy17fe/G/KhASnMe+U=;
        b=ikeF37pRF3oaZXFPQKUtkQXr4Kkiu/bBGuCF42dabASUCO6nihff0BlBiUFyj7r8Mb
         m/4XOnXYffKBhrOrWcTgrmJ9mGvApaww1mThELOWDIFGGTFI3/Vo4bnEACkoKfkENjXO
         ywJ57Ad9G//ZyuQIDmb7Ah0wIRDivCWZp7lmf/OcOPw8XAxtu2y11cJpOhmO8PAw0XI5
         UfQmzEfVJDmO/eB3WlEMC/H6SBAAMDUdUyyGez80IwNbbaupm579xwGNbNzmjsdNWsPy
         0+Ra1xiNYkOjtEQOd+ypOwFYvFXGUYtj1kdYixvVm7OHFtAi6mkkAXFfFKHBN7yFCs9n
         8JeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793892744; x=1794497544;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=o9aybnm6z6uCy7Z3S2M1SU/Xzgy17fe/G/KhASnMe+U=;
        b=NYxMO7ycg4+msW/pXPZIoVolMgD9jhldNZGN5/jFN6O4llSlr9xB03k1w9zIXZrunK
         PoHTIhEW8lGPtXW5X8JDIADYd5f3dTmrvdSAAbqkJYwbmdQuwcUxGcJAYVVpZCBIDq5K
         V2rr77eBueCp85wnR/04HdlDUPhRYDpmBY9wBnv1ESAGAMFXeZBgFoWvUoOWpYPRNhnF
         UDjewQuq9e9y1CMPiPXXaT0mpKjJwBQQ5emBs2tZp1sI3sCjbF8xJF0KrPhspiiCC4o6
         WP+UbHmmcRHn4AMKBjrJwYgda86FX3HPJ55fhjnCCNwiTaL/L99fPWu9gxQp5BCgll/K
         wgig==
X-Forwarded-Encrypted: i=1; AKwUvBxmXETVmvVG0+KPSGdPW85PC+Zu1fV8/OwMLDKLw3pFeujzGCgfl/7El179lXtRD9OI2g10KaQ+6mnq+0L4lg==@lists.infradead.org
X-Gm-Message-State: APuU4Z9MAc9fPWUDvbW1io/CqqeD4zxcODdzg4Kvo622ct9nRvM6veWe
	mMqw+iqIzF29Ez5BpfJIAuNiCSiYpDKCsEC88PXAV/UMWTQTxLsDWRAsfvtDOfWtWDbSEEsY9MU
	7sji3zOCqQFj0YZEJKWa2yVppsvvWF2oE89EsEf4c0mIuO+IH/rqB7qEcIJ1vHz1wU2IMhf30W7
	U=
X-Gm-Gg: AYBFou2v4IdOCkHpCVgjt66Az8zwdrZJHYvH5huGQ0H+JLP58Cs/m2+p0y+A02UmxqU
	rZb5cX3orwcTYegFbAKiBJmd4RX8DLa7jHE2meTgJdsWKU8gjrCsMxw8HPTlfVkaP+wfJ7aGTFS
	wCHPNeuijn6UW0CNISwgVZjbEDR4QBpgTl8u4Rl8SJGG6WIEajw+855CUi73DSx89BZUJoPTuRk
	P2ndk84NV+sjl8B5DVyN6xFUs5HJrkaldPfe58CbttjAbWKvDkU7fjkNcpx3kR50f+JN6ONzyxE
	IY+hHx/aMb9taqXt9GPM2t3JQgmNUPQH05+p32NqFp8I5uDlQnBszZXGuJ894oY1pzXeGp4zcxU
	US4K5V4JWc9rJKd6zHMzafAuOMtQZ3zoQgvOUrxMzOELWLXydSit7tUyi/X0XGRbnomHxiXHuHh
	8OS8E47kOrdWruMe6y
X-Received: by 2002:a05:6122:469b:b0:5ea:b972:1403 with SMTP id 71dfb90a1353d-5ec68539420mr9780589e0c.3.1793892743619;
        Thu, 05 Nov 2026 07:32:23 -0800 (PST)
X-Received: by 2002:a05:6122:469b:b0:5ea:b972:1403 with SMTP id 71dfb90a1353d-5ec68539420mr9780528e0c.3.1793892743105;
        Thu, 05 Nov 2026 07:32:23 -0800 (PST)
Received: from [192.168.2.1] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b56e58fcb8sm70424915e9.1.2026.11.05.07.32.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Nov 2026 07:32:22 -0800 (PST)
Message-ID: <6740e6e8-6b77-47dc-8b9a-b81efb557664@oss.qualcomm.com>
Date: Thu, 5 Nov 2026 16:32:17 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/6] powercap: Add generic zone hierarchy creation
 helpers
To: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        rafael@kernel.org
Cc: Daniel Lezcano <daniel.lezcano@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Shuah Khan <shuah@kernel.org>,
        Lukasz Luba <lukasz.luba@arm.com>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kselftest@vger.kernel.org
References: <cover.1793666444.git.daniel.lezcano@oss.qualcomm.com>
 <d33ddfe789ee42a00d3ff3df55e0c4011e69debc.1793666444.git.daniel.lezcano@oss.qualcomm.com>
 <f018a2c1-2618-458d-a95f-a0cfdef9ac39@oss.qualcomm.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
In-Reply-To: <f018a2c1-2618-458d-a95f-a0cfdef9ac39@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTA1MDA2MSBTYWx0ZWRfX3T6bDdIAVrf3
 Oran4Tg0CWjsQw7v3tThzx3NEGvNuvmcL3TngDA1HSGEw9PunaK7qKwSZQBg4RHHZPxQ4DOFQFX
 0BR/k9u9xn/Eakgt0jdW0uOZTKT/SqTym4MtW8CIcJbA2dnAXtPaW6cDVbrzFeKord6B+9iTOSt
 CMRANx59U9HSX32L3SV3v3JxPj+748NqpiSqkIDtOAVxKKgLww5uJ6z9elUWXSRwoBivkPdYOq5
 uHr7o+lq31feKNThtrZD6rBPjoDSmOC9oJwIGZyxfYH6knfaJt07dgBGvmq+EVA2Mg5qcp+q5vw
 Ib5cH3UJ0OUldjL5+xnj1I7uKjf341AssX1npQNLFgj1f5YH2D2CpmBe2qyy2YHUvMasaTyt5NZ
 5ZmQUndl1WaV07zVk9/YB3ybJlGfx9ktW5bV1kyBpBYYDIzmCQ7jX1+uJJGOykHUx2D3Eys2j9/
 6AOb/tLRa9I4kP6qi8w==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTA1MDA2MSBTYWx0ZWRfXz8b7z/fa1bVn
 rCIU69y0vfVGUWib1bpLrY0d4c21Az92HKW7xMpWhdktjJctsiMkeBP+nwGoEmFGq7oJRRNrp0b
 ZFxqySQoFTlrrF7i7BaO4VahKbCkFiA=
X-Authority-Analysis: v=2.4 cv=Vdhir1p9 c=1 sm=1 tr=0 ts=6aeca188 cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=uw/3876vWhRnNVL35W6mqQ==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=49fcMjTkyU320Q8Jtn8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=vmgOmaN-Xu0dpDh8OwbV:22
X-Proofpoint-ORIG-GUID: 0DZoLMAHcnNqCkzrZ8SAYkqnO-uAu023
X-Proofpoint-GUID: 0DZoLMAHcnNqCkzrZ8SAYkqnO-uAu023
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-05_04,2026-11-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 suspectscore=0 phishscore=0 priorityscore=1501
 impostorscore=0 clxscore=1015 adultscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611050061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_073226_199802_1891A083 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

CkhpIE1hbmFmLAoKCk9uIDExLzUvMjYgMTA6MzUsIE1hbmFmIE1lZXRoYWxhdmFsYXBwdSBQYWxs
aWt1bmhpIHdyb3RlOgo+IEhpIERhbmllbCwKPiAKPiAKPiBPbiAxMS8zLzIwMjYgMTA6MTggQU0s
IERhbmllbCBMZXpjYW5vIHdyb3RlOgoKWyAuLi4gXQoKPj4gwqAgZHJpdmVycy9wb3dlcmNhcC9w
b3dlcmNhcF9zeXMuYyB8IDIwNCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4+IMKg
IGluY2x1ZGUvbGludXgvcG93ZXJjYXAuaMKgwqDCoMKgwqDCoMKgIHwgMjA1ICsrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrCj4+IMKgIDIgZmlsZXMgY2hhbmdlZCwgNDA5IGluc2VydGlv
bnMoKykKPiAKPiBJIHJlYmFzZWQgbXkgUXVhbGNvbW0gU1BFTCBwb3dlcmNhcCBkcml2ZXIgc2Vy
aWVzIG9uIHRvcCBvZiB0aGlzIHNlcmllcyAKPiBhbmQgbWlncmF0ZWQgdGhlIHNlcmllcyB3aXRo
b3V0IGFueSBpc3N1ZXMuCj4gCj4gVGVzdGVkLWJ5OiBNYW5hZiBNZWV0aGFsYXZhbGFwcHUgUGFs
bGlrdW5oaSAKPiA8bWFuYWYucGFsbGlrdW5oaUBvc3MucXVhbGNvbW0uY29tPgoKVGhhbmtzIGZv
ciB0ZXN0aW5nICEKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
