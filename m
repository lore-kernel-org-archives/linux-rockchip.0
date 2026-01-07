Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DF04CD5828
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Jan 2026 10:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LvBdbakUoswddHhgCytKzz81wi5mo1S3pz9MtYellQk=; b=NLWEObr4LG6UiH
	ZAMz4HNqT/qhLn+FXUt65BDgkThli++cc4n18IDG2ekha6RduN/zC/RHLz6gM66Y6BqtjcWdGUpr6
	Wohsce3JHYdrLUs9MNA3/08XpnFdsBOVbIpsE56Vjry3WqYdj/KMVopOBiY1awgQFnQpgJ7eMdgaO
	lYdW7HoM+StBEGA+gCWZSw4ABPL8fLnFnjoqQo6QusxNFk17KY7JlUUax+XFtH99iX0XSajJmJPQ5
	d54fCa830CbLJXgeLxgBtzEjZLgSg1HPN/WrSzZUOlDgZQ9HYatyk7zEuCOtZRiZnezdVGjzePqdC
	DRJFgzIgJJuKDzKsRDGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdQTw-0000000Eefu-3OFH;
	Wed, 07 Jan 2026 10:09:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdQTu-0000000Eef7-1Qvm
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Jan 2026 10:09:35 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6079GHSP3889118
	for <linux-rockchip@lists.infradead.org>; Wed, 7 Jan 2026 10:09:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	udw1eUX5AGugXDTEzQPhcy3bTz1GW4bpaID9E/vn9hA=; b=mjF4K94+Wd03cBz1
	fQZXOT1/EDIibjv9FLqj5bXfv3pNiIe1o0idHZeCE5ZTdCkXcSGtDpRi66eEUsFy
	Vbd/FNPQJYYuwheVPnjEVsVnM2FCnT/LOJ2KgtI4INMJxpTfyfJ6rTWyuRJmOH43
	3zQTggAW9vlVIVkTwJ2oi77oC8GWw+A3/DPY+s4MXU9gNeNm3Qaa6+rhgI1pQkVn
	N5BxT59RAkLVHAVbgh/6+U/kXAC0W6lYWqqqSziUPFdP8Zm/HzpdKM9z5PPxrTNP
	K2+dGrCaWIU0jayeuLzW5BtoPD9u7h6KsjYiJ42TkUS70VD21uO5dxFaIJGN3TSo
	NS+ssw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bh6a0jvve-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 07 Jan 2026 10:09:33 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-29f2381ea85so41336105ad.0
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Jan 2026 02:09:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767780572; x=1768385372; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=udw1eUX5AGugXDTEzQPhcy3bTz1GW4bpaID9E/vn9hA=;
        b=TVM0NZNW0b44y9vRuQAeFTo7nb3lsgvi7Zg95Hd2gVarzMWn05fJS5JoGxB91ZlBwg
         PjppL4Sw3aR2KOOiwXaQMV5Av7WyGLAQF5gDo9ssFFC483sQmY/9J6u/5nbU2FhG0IMP
         EP3KR2qkoUfPavLEQaQwuuyrcqcLn60Jnz6cVx/K9kuSuvJ9u16dzow69uN3XWCUGkQ6
         PB800kZGDr4wM3m5PT6lO+DcdzEKrPL4q5tZxQv362jhJLaKmtKM2BZBc1E7ENT5WcdJ
         kNw/ESyH84Zs9QJKXIBDil+xME9hC9tvFL8VtR/iSnUoJVebMip8+YfLo2BEOOzJ4QjU
         WI6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767780572; x=1768385372;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=udw1eUX5AGugXDTEzQPhcy3bTz1GW4bpaID9E/vn9hA=;
        b=goF9SUkDzbIkgQJq2+c0H99KVxGFF139zMShJqZy6iAka3016zA+SCBA9lVru6QwuB
         PFZ9+YjQ8/k0jH6GU6KZtSnr+pTVmkW2PxB2Vrw45g+/JGKIVQbJmMDbsQotdF4Sd1LJ
         HaNQhKEuAxLgMKxEXI93dUyC9wL1CU9JuAnss6bQiLmyZIwZCA/Zx2jVmLmI6hYrTiBk
         Tw5tpp6bpjqs7D2ZyjoHcYIwldQNd/BGGO3KIn/oyl1xOB2wTKtlxhoe1TVEJcvwBBXR
         ihHjl5uh9+eStJEH6YFjScvNsZ7kcvuGa2n4fE2HP7vpoIVt55m4G1i7nZ5aKBERAD1/
         po9A==
X-Gm-Message-State: AOJu0YwUxwAuQBaZNfCysaqC+zg3DGC/Tbv2SJRsAxcLyB2iU2I2HWC2
	7k3ITpZWnQ0BBe2cw0W5MhyWlOu3nH8BL9u2ZM+DEZDLpyg2kWrXS6tbm5wMS5XZR51fP4fr95c
	5huJVZ/a2RRQsQEuT6oy55DWaeFK+obViMPlmN0352+GWWB4lO/2gnsIcSZugIH1lxemXmN7oRb
	w=
X-Gm-Gg: AY/fxX57M+GWZoPuAI4i06YLka5nBiKniZtpYGcxXpLrKrAcAdaXMenjB5v9nXBsJ6m
	Eo76Qp71bVnRmfPFuhs92MLEEfIHW4Dw4sVpeEAI6ULAPIMYhy1F6K60FI8eui4fu9OnRKB2Zr8
	C71zERHgfDC4yASzM7js8ufDHvDkq9R8GZpmA8u5f4KcHNDpVzNz/y0sgkCFfC3vr3G576d5yke
	D4/s1s7FHdIXNgcV4HeBkcjBLb9qWTdNBa8Y/FS/tlgcQzPs37hIWVSaFgjM76tRg3SrnOFFhoL
	v9nkOeARShDFojuJ9aG9upQ9gBzNJhfMy6GzlJcFWqVl8mVFkmdzHBR54PrQSwXTs189p6dOsWX
	guvLw1idY+8c4kNRSco5ltrWCts5ztF97iOiDxqSr/DrsKIc=
X-Received: by 2002:a17:903:2348:b0:2a0:d431:930 with SMTP id d9443c01a7336-2a3ee4b244dmr19748265ad.47.1767780571928;
        Wed, 07 Jan 2026 02:09:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE0LO0AbdqJrkfWaN2hJ7j9a3u+lehpoZUlZBHWKc1x1PyeIkRqMM6NwTEK43+mHHpSRBaQ+w==
X-Received: by 2002:a17:903:2348:b0:2a0:d431:930 with SMTP id d9443c01a7336-2a3ee4b244dmr19747945ad.47.1767780571440;
        Wed, 07 Jan 2026 02:09:31 -0800 (PST)
Received: from [172.20.10.11] ([152.57.155.74])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cd469dsm46794155ad.94.2026.01.07.02.09.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 02:09:31 -0800 (PST)
Message-ID: <9b938af1-d915-4674-90a8-46a4fed0f7f5@oss.qualcomm.com>
Date: Wed, 7 Jan 2026 15:39:26 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] PCI: dwc: Add LTSSM tracing support to debugfs
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, Niklas Cassel <cassel@kernel.org>,
        linux-pci@vger.kernel.org, Jingoo Han <jingoohan1@gmail.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Manivannan Sadhasivam <mani@kernel.org>
References: <1767691119-28287-1-git-send-email-shawn.lin@rock-chips.com>
 <8d4e73f5-b4da-4aca-a2b2-b607be8c245a@oss.qualcomm.com>
 <014d034f-998d-466c-9c73-181297de83ba@rock-chips.com>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <014d034f-998d-466c-9c73-181297de83ba@rock-chips.com>
X-Proofpoint-ORIG-GUID: BSPz4ruiWlEOMkRq9MnQFcYNQEiTBrbJ
X-Proofpoint-GUID: BSPz4ruiWlEOMkRq9MnQFcYNQEiTBrbJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA4MiBTYWx0ZWRfXyBchwAxJ5EvA
 kDMrbKFwg4LN7VWgvqy5Ov7+JycSqSeZip2oRJovikfldbh6StZNsUmsrpr4FwtnTuokymN4iYP
 k9+XcsgmYGOqyZxJxP5bzpQmLvbjFxdJSo26cs44wVovDxakhpN3IjZ3/586FRXFGVMUbhz+90W
 fKon4MrVSj67iTo4J3gIPcOsaClsN9hWc6qLctDBoxcULfIVGxNy3qOsLgdiMkpCx/9104Eb/jB
 MNn/ovPwzLEcWaOd2EyLmd9mbNaogqda69/Y6uZmAxxqBOwdPl2/3OmK9sNiEbDj46wNmoWlzow
 cwR7qyG3Y6+8sadzzpC+jwhG/8Un5cjkifE33wZHL4G598Ro9Ni2SKC7At8Y6jbfGw8KDGSabua
 1RNOFtifKk/0hw4cQU+ca8ze8HB47Ff1pFDusKQXZyS9WMNQ2S0mp0OtLkaq9QBkqobBoBf2Y1n
 hWfpVfYphHDG5XlaSCQ==
X-Authority-Analysis: v=2.4 cv=MtdfKmae c=1 sm=1 tr=0 ts=695e30dd cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=tDXggk5s07qaktl9dEk39g==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=s8YR1HE3AAAA:8 a=8IykHcQbvvH1SdHDNeUA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0
 priorityscore=1501 clxscore=1015 impostorscore=0 spamscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601070082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_020934_518485_81624D7F 
X-CRM114-Status: GOOD (  21.99  )
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

CgpPbiAxLzcvMjAyNiAzOjExIFBNLCBTaGF3biBMaW4gd3JvdGU6Cj4g5ZyoIDIwMjYvMDEvMDcg
5pif5pyf5LiJIDE3OjEyLCBLcmlzaG5hIENoYWl0YW55YSBDaHVuZHJ1IOWGmemBkzoKPj4KPj4K
Pj4gT24gMS82LzIwMjYgMjo0OCBQTSwgU2hhd24gTGluIHdyb3RlOgo+Pj4gU29tZSBwbGF0Zm9y
bXMgbWF5IHByb3ZpZGUgTFRTU00gdHJhY2UgZnVuY3Rpb25hbGl0eSwgcmVjb3JkaW5nIAo+Pj4g
aGlzdG9yaWNhbAo+Pj4gTFRTU00gc3RhdGUgdHJhbnNpdGlvbiBpbmZvcm1hdGlvbi4gVGhpcyBp
cyB2ZXJ5IHVzZWZ1bCBmb3IgCj4+PiBkZWJ1Z2dpbmcsIHN1Y2gKPj4+IGFzIHdoZW4gY2VydGFp
biBkZXZpY2VzIGNhbm5vdCBiZSByZWNvZ25pemVkLiBBZGQgYW4gbHRzc21fdHJhY2UgCj4+PiBv
cGVyYXRpb24KPj4+IG5vZGUgaW4gZGVidWdmcyBmb3IgcGxhdGZvcm0gd2hpY2ggY291bGQgcHJv
dmlkZSB0aGVzZSBpbmZvcm1hdGlvbiAKPj4+IHRvIHNob3cKPj4+IHRoZSBMVFNTTSBoaXN0b3J5
Lgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMu
Y29tPgo+Pj4gLS0tCj4+PiDCoCAuLi4vY29udHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLWRl
YnVnZnMuY8KgIHwgNDQgCj4+PiArKysrKysrKysrKysrKysrKysrCj4+PiDCoCBkcml2ZXJzL3Bj
aS9jb250cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndhcmUuaMKgIHzCoCA2ICsrKwo+Pj4gwqAgMiBm
aWxlcyBjaGFuZ2VkLCA1MCBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdud2FyZS1kZWJ1Z2ZzLmMgYi8gCj4+PiBk
cml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndhcmUtZGVidWdmcy5jCj4+PiBp
bmRleCBkZjk4ZmVlNjk4OTIuLjU2OWU4ZTA3OGVmMiAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdud2FyZS1kZWJ1Z2ZzLmMKPj4+ICsrKyBiL2Ry
aXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdud2FyZS1kZWJ1Z2ZzLmMKPj4+IEBA
IC01MTEsNiArNTExLDM4IEBAIHN0YXRpYyBpbnQgbHRzc21fc3RhdHVzX29wZW4oc3RydWN0IGlu
b2RlIAo+Pj4gKmlub2RlLCBzdHJ1Y3QgZmlsZSAqZmlsZSkKPj4+IMKgwqDCoMKgwqAgcmV0dXJu
IHNpbmdsZV9vcGVuKGZpbGUsIGx0c3NtX3N0YXR1c19zaG93LCBpbm9kZS0+aV9wcml2YXRlKTsK
Pj4+IMKgIH0KPj4+ICtzdGF0aWMgc3RydWN0IGR3X3BjaWVfbHRzc21faGlzdG9yeSAqZHdfcGNp
ZV9sdHNzbV90cmFjZShzdHJ1Y3QgCj4+PiBkd19wY2llICpwY2kpCj4+PiArewo+Pj4gK8KgwqDC
oCBpZiAocGNpLT5vcHMgJiYgcGNpLT5vcHMtPmx0c3NtX3RyYWNlKQo+Pj4gK8KgwqDCoMKgwqDC
oMKgIHJldHVybiBwY2ktPm9wcy0+bHRzc21fdHJhY2UocGNpKTsKPj4+ICsKPj4+ICvCoMKgwqAg
cmV0dXJuIE5VTEw7Cj4+PiArfQo+Pj4gKwo+Pj4gK3N0YXRpYyBpbnQgbHRzc21fdHJhY2Vfc2hv
dyhzdHJ1Y3Qgc2VxX2ZpbGUgKnMsIHZvaWQgKnYpCj4+PiArewo+Pj4gK8KgwqDCoCBzdHJ1Y3Qg
ZHdfcGNpZSAqcGNpID0gcy0+cHJpdmF0ZTsKPj4+ICvCoMKgwqAgc3RydWN0IGR3X3BjaWVfbHRz
c21faGlzdG9yeSAqaGlzdG9yeTsKPj4+ICvCoMKgwqAgZW51bSBkd19wY2llX2x0c3NtIHZhbDsK
Pj4+ICvCoMKgwqAgdTMyIGxvb3A7Cj4+PiArCj4+PiArwqDCoMKgIGhpc3RvcnkgPSBkd19wY2ll
X2x0c3NtX3RyYWNlKHBjaSk7Cj4+PiArwqDCoMKgIGlmICghaGlzdG9yeSkKPj4+ICvCoMKgwqDC
oMKgwqDCoCByZXR1cm4gMDsKPj4+ICsKPj4+ICvCoMKgwqAgZm9yIChsb29wID0gMDsgbG9vcCA8
IGhpc3RvcnktPmNvdW50OyBsb29wKyspIHsKPj4+ICvCoMKgwqDCoMKgwqDCoCB2YWwgPSBoaXN0
b3J5LT5zdGF0ZXNbbG9vcF07Cj4+PiArwqDCoMKgwqDCoMKgwqAgc2VxX3ByaW50ZihzLCAiJXMg
KDB4JTAyeClcbiIsIGx0c3NtX3N0YXR1c19zdHJpbmcodmFsKSwgdmFsKTsKPj4+ICvCoMKgwqAg
fQo+Pj4gKwo+Pj4gK8KgwqDCoCByZXR1cm4gMDsKPj4+ICt9Cj4+PiArCj4+PiArc3RhdGljIGlu
dCBsdHNzbV90cmFjZV9vcGVuKHN0cnVjdCBpbm9kZSAqaW5vZGUsIHN0cnVjdCBmaWxlICpmaWxl
KQo+Pj4gK3sKPj4+ICvCoMKgwqAgcmV0dXJuIHNpbmdsZV9vcGVuKGZpbGUsIGx0c3NtX3RyYWNl
X3Nob3csIGlub2RlLT5pX3ByaXZhdGUpOwo+Pj4gK30KPj4+ICsKPj4+IMKgICNkZWZpbmUgZHdj
X2RlYnVnZnNfY3JlYXRlKG5hbWUpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBcCj4+PiDCoCBkZWJ1
Z2ZzX2NyZWF0ZV9maWxlKCNuYW1lLCAwNjQ0LCByYXNkZXNfZGVidWcsIHBjaSzCoMKgwqAgXAo+
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJmRiZ18gIyMgbmFtZSAjIyBfZm9wcykKPj4+
IEBAIC01NTIsNiArNTg0LDExIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZmlsZV9vcGVyYXRpb25z
IAo+Pj4gZHdjX3BjaWVfbHRzc21fc3RhdHVzX29wcyA9IHsKPj4+IMKgwqDCoMKgwqAgLnJlYWQg
PSBzZXFfcmVhZCwKPj4+IMKgIH07Cj4+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBmaWxlX29wZXJh
dGlvbnMgZHdjX3BjaWVfbHRzc21fdHJhY2Vfb3BzID0gewo+Pj4gK8KgwqDCoCAub3BlbiA9IGx0
c3NtX3RyYWNlX29wZW4sCj4+PiArwqDCoMKgIC5yZWFkID0gc2VxX3JlYWQsCj4+PiArfTsKPj4+
ICsKPj4+IMKgIHN0YXRpYyB2b2lkIGR3Y19wY2llX3Jhc2Rlc19kZWJ1Z2ZzX2RlaW5pdChzdHJ1
Y3QgZHdfcGNpZSAqcGNpKQo+Pj4gwqAgewo+Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgZHdjX3BjaWVf
cmFzZGVzX2luZm8gKnJpbmZvID0gcGNpLT5kZWJ1Z2ZzLT5yYXNkZXNfaW5mbzsKPj4+IEBAIC02
NDQsNiArNjgxLDEyIEBAIHN0YXRpYyB2b2lkIGR3Y19wY2llX2x0c3NtX2RlYnVnZnNfaW5pdChz
dHJ1Y3QgCj4+PiBkd19wY2llICpwY2ksIHN0cnVjdCBkZW50cnkgKmRpcikKPj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJmR3Y19wY2llX2x0c3NtX3N0YXR1c19vcHMpOwo+
Pj4gwqAgfQo+Pj4gK3N0YXRpYyB2b2lkIGR3Y19wY2llX2x0c3NtX3RyYWNlX2RlYnVnZnNfaW5p
dChzdHJ1Y3QgZHdfcGNpZSAqcGNpLCAKPj4+IHN0cnVjdCBkZW50cnkgKmRpcikKPj4+ICt7Cj4+
PiArwqDCoMKgIGRlYnVnZnNfY3JlYXRlX2ZpbGUoImx0c3NtX3RyYWNlIiwgMDQ0NCwgZGlyLCBw
Y2ksCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICZkd2NfcGNpZV9sdHNzbV90
cmFjZV9vcHMpOwo+PiBDYW4gd2UgaGF2ZSB0aGlzIGFzIHRoZSBzeXNmcywgc28gdGhhdCBpZiB0
aGVyZSBpcyBzb21lIGlzc3VlIGluIAo+PiBwcm9kdWN0aW9uIGRldmljZXMgd2hlcmUgZGVidWdm
cyBpcyBub3QgYXZhaWxhYmxlLAo+PiB3ZSBjYW4gdXNlIHRoaXMgdG8gc2VlIExUU1NNIHN0YXRl
IGZpZ3VyZSBvdXQgdGhlIGlzc3VlLgo+Pgo+Cj4gVGhhbmtzIGZvciB0aGUgaW5wdXQuIEkgdGhp
bmsgdGhlIGx0c3NtX3RyYWNlIGlzIGRlYnVnIGluIG5hdHVyZSwganVzdCAKPiBsaWtlIHRoZSBl
eGlzdGluZyBsdHNzbSBhbmQgcmFzZGVzX2RlYnVnIG5vZGVzLCBzbyBpdCBwcm9iYWJseSBmaXRz
IAo+IGJldHRlciB1bmRlciBkZWJ1Z2ZzIGZvciBjb25zaXN0ZW5jeS4gTW9yZW92ZXIsIGdpdmVu
IG1vc3QgdGltZSB3ZQo+IGNvbWJpbmUgcmFzZGVzX2RlYnVnIGFuZCBsdHNzbW0gaGlzdG9yeSB0
byBkZWJ1ZyBpc3N1ZXMsIGlmIHdlIHNwbGl0IGl0Cj4gb3V0LCB3ZeKAmWQgZW5kIHVwIHdpdGgg
dHdvIHNlcGFyYXRlIGRlYnVnZ2luZyBhcmVhcywgd2hpY2ggZmVlbHMgYSBiaXQKPiBmcmFnbWVu
dGVkIGFuZCBsZXNzIGNsZWFyLiAKUmFzZGVzIGhhcyBzdGF0aXN0aWNzIGFuZCBlcnIgaW5qZWN0
aW9uIGFsb25nIHdpdGggZGVidWcgZmVhdHVyZSwgd2UgY2FuIApoYXZlIHRoZW0KYXMgZGVidWdm
cyBvbmx5IHNpbmNlIHRoZXkgd2lsbCBub3QgaGVscCBpbiBkZWJ1Z2dpbmcgcHJvZHVjdGlvbiBp
c3N1ZXMuIApGb3Igb3RoZXJzIGxpa2UKbHRzc20sIGxhbmVfZGV0ZWN0ICYgcnhfdmFsaWQgd2Ug
Y2FuIGhhdmUgaW4gc3lzZnMuCgotIEtyaXNobmEgQ2hhaXRhbnlhLgo+Cj4KPj4gLSBLcmlzaG5h
IENoYWl0YW55YS4KPj4+ICt9Cj4+PiArCj4+PiDCoCBzdGF0aWMgaW50IGR3X3BjaWVfcHRtX2No
ZWNrX2NhcGFiaWxpdHkodm9pZCAqZHJ2ZGF0YSkKPj4+IMKgIHsKPj4+IMKgwqDCoMKgwqAgc3Ry
dWN0IGR3X3BjaWUgKnBjaSA9IGRydmRhdGE7Cj4+PiBAQCAtOTIyLDYgKzk2NSw3IEBAIHZvaWQg
ZHdjX3BjaWVfZGVidWdmc19pbml0KHN0cnVjdCBkd19wY2llICpwY2ksIAo+Pj4gZW51bSBkd19w
Y2llX2RldmljZV9tb2RlIG1vZGUpCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlcnIp
Owo+Pj4gwqDCoMKgwqDCoCBkd2NfcGNpZV9sdHNzbV9kZWJ1Z2ZzX2luaXQocGNpLCBkaXIpOwo+
Pj4gK8KgwqDCoCBkd2NfcGNpZV9sdHNzbV90cmFjZV9kZWJ1Z2ZzX2luaXQocGNpLCBkaXIpOwo+
Pj4gwqDCoMKgwqDCoCBwY2ktPm1vZGUgPSBtb2RlOwo+Pj4gwqDCoMKgwqDCoCBwY2ktPnB0bV9k
ZWJ1Z2ZzID0gcGNpZV9wdG1fY3JlYXRlX2RlYnVnZnMocGNpLT5kZXYsIHBjaSwKPj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndhcmUuaCBiL2Ry
aXZlcnMvIAo+Pj4gcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdud2FyZS5oCj4+PiBpbmRl
eCA1Y2QyN2Y1NzM5ZjEuLjBkZjE4OTk1YjdmZSAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvcGNp
L2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdud2FyZS5oCj4+PiArKysgYi9kcml2ZXJzL3BjaS9j
b250cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndhcmUuaAo+Pj4gQEAgLTM5NSw2ICszOTUsMTEgQEAg
ZW51bSBkd19wY2llX2x0c3NtIHsKPj4+IMKgwqDCoMKgwqAgRFdfUENJRV9MVFNTTV9VTktOT1dO
ID0gMHhGRkZGRkZGRiwKPj4+IMKgIH07Cj4+PiArc3RydWN0IGR3X3BjaWVfbHRzc21faGlzdG9y
eSB7Cj4+PiArwqDCoMKgIGVudW0gZHdfcGNpZV9sdHNzbSAqc3RhdGVzOwo+Pj4gK8KgwqDCoCB1
MzIgY291bnQ7Cj4+PiArfTsKPj4+ICsKPj4+IMKgIHN0cnVjdCBkd19wY2llX29iX2F0dV9jZmcg
ewo+Pj4gwqDCoMKgwqDCoCBpbnQgaW5kZXg7Cj4+PiDCoMKgwqDCoMKgIGludCB0eXBlOwo+Pj4g
QEAgLTQ5OSw2ICs1MDQsNyBAQCBzdHJ1Y3QgZHdfcGNpZV9vcHMgewo+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2l6ZV90IHNpemUsIHUzMiB2YWwpOwo+Pj4gwqDC
oMKgwqDCoCBib29swqDCoMKgICgqbGlua191cCkoc3RydWN0IGR3X3BjaWUgKnBjaWUpOwo+Pj4g
wqDCoMKgwqDCoCBlbnVtIGR3X3BjaWVfbHRzc20gKCpnZXRfbHRzc20pKHN0cnVjdCBkd19wY2ll
ICpwY2llKTsKPj4+ICvCoMKgwqAgc3RydWN0IGR3X3BjaWVfbHRzc21faGlzdG9yeSAqICgqbHRz
c21fdHJhY2UpKHN0cnVjdCBkd19wY2llIAo+Pj4gKnBjaWUpOwo+Pj4gwqDCoMKgwqDCoCBpbnTC
oMKgwqAgKCpzdGFydF9saW5rKShzdHJ1Y3QgZHdfcGNpZSAqcGNpZSk7Cj4+PiDCoMKgwqDCoMKg
IHZvaWTCoMKgwqAgKCpzdG9wX2xpbmspKHN0cnVjdCBkd19wY2llICpwY2llKTsKPj4+IMKgwqDC
oMKgwqAgaW50wqDCoMKgICgqYXNzZXJ0X3BlcnN0KShzdHJ1Y3QgZHdfcGNpZSAqcGNpZSwgYm9v
bCBhc3NlcnQpOwo+Pgo+Pgo+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
