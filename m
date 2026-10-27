Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7A7606A31D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 16:18:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=uX/S0Sn1;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=mkLDoAVu;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=gdg87DJK
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=B9yiqqm2fo1XOtjINODhmDk9bvhoYPade/Wdomr8JOU=; b=uX/S0Sn13Baedsix6qZiYfmxVp
	UCmGb1z/+LWNEmG4zbOlh9XzDpYnJ1J2KsDj9XClmQ/Sb1YO4crEy8jJirt59oGm3Fst84Nsg9nPw
	iJC63iELH8g59kcEnz+kIHXwNiRtp7Et+ny46Nof+uo7hQNoHW+NBch/wtEZvOR0TkXobUN6YxXlI
	g1YQN0UNIFahgfACRwAwBU2caFjHuzXsTsN4NfDkSyz7jBhuv4ejrGRGdrTLnF8G5GOvC+C5CQt1U
	ZE+ny9vi6Ei4Ro+yB5KYdatIFMhJEx68DM5PT1WkVo1F+mAHE0KFWYVrYCdy8DAU5q04XatjXLIFa
	rxRCXX9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLjsJ-00000005KXC-1hZq;
	Tue, 27 Oct 2026 16:18:11 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLjsH-00000005KVG-1K9g
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Oct 2026 16:18:10 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69RFL5wU3153420
	for <linux-rockchip@lists.infradead.org>; Tue, 27 Oct 2026 16:18:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IGDTuUyORqQ9ZtkZ7BRn3HYpiHLzxyIKFVLh6zS3w3s=; b=mkLDoAVufykMfXU9
	b0wNwshi/OOFS1fGs2PUhkkdJTgKHecVqhmTkGvP5r4qVsM+99YVbuqYp42UzZBm
	2TI4maBCJKRfRPZLpK4EHZrA4GQCiz0sUK0TDussji1lhYQpdcZ+ik3hIJgvxnM0
	hZWRaYnTqGItcNiX0Kw7f9A/6jtt8D68cwLTH4CWc1agJ6uhZHLwqnGJA7wS3xzb
	vyELDZ4MGuWT4alpDXCC/oZm6s0T+j2wvi/ooq5od9IlQ9oV1WXkYa8UMu1FHjnR
	88tcaYIVwMLXmirQuw4xV27zS3jA/EgftwetVNFFnLWWu1MMo7IZQzPRqk+ELF69
	G8yO2w==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hjqw223pv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 27 Oct 2026 16:18:07 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-91c44b8fed1so1430416d6.1
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Oct 2026 09:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793117887; x=1793722687; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=IGDTuUyORqQ9ZtkZ7BRn3HYpiHLzxyIKFVLh6zS3w3s=;
        b=gdg87DJKZxzwLPQ6P4qZWsxD8gP+oT8rU2VU5taumKAMHpwMiZIhcV14m8A8Jmv/z2
         xhEVCJZwE47qLx8XSjch7t2cXwLQbpSxcppN3nYogkmM+ZSzmN9RwXywOKJ+Mj+blzxo
         vvgBt3YnutcFALbuQ7CwUWsC+qGHVMhpErMY6zIf3dSg/JMuMJIAcyVxS4rubKK+sfJG
         XfwrSCpxl9S1FuZ3s5VvJgmyVLJJpALgU8zUFEmdsNRf3ykKH5tV5dL0XLubIt0Ww1zy
         p14vQX4SN3181c97yacxRWYQaax9MtB+U4Q9H+wy/qmDDHnCvMnZIeDpwz1uSxU6TRb7
         0JVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793117887; x=1793722687;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IGDTuUyORqQ9ZtkZ7BRn3HYpiHLzxyIKFVLh6zS3w3s=;
        b=NUCxSXor/hqCMt+0QFQOkSgGzIBmfTwcevt4RxJq54ga6BlB9TVMxGeeTSCcGN8pOW
         bYT52hWbnQl51IMWherK2UJzhmpAiYDlbh1aJo3d2dtqaRANHARxoSeEsj7gh9kdpPeH
         qIQIDmgAZj9subyS0ZYkN0SQFtIu5AdF7YbXXoY8pA3PvhX6SyjOKbw/26nxs6NkwhNR
         wANwkyjjpSkgtGi+VU4+qPfewjnSc9Xvtkc4j0FFhEeAdHAU7vrzOXDKbjdX3f98IpND
         lwlrKYGQ0O3Jw0P2kjBpe3waRNJwKW6RVJ54y8joMmjgAA4PRlC7GfNT0avEGrq3ir69
         O+Fw==
X-Forwarded-Encrypted: i=1; AKwUvBwL4JSe4HBWC6tykk2XBNmEeammEiZHGhjoye6uIvY37jl1v8vCX+0rrlx4+wdZlClVhcJLz6JOETysOYBWIQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYINegck5oo6FR8mYC/fotqkUOLVyPkY2WGHaXkjcb62UEmocsKZ
	mTH3//2V3pWgyoLuy7OwmCiUHRP7Uk3fV/oihuCIT3eUGPTpsKXdfwf6vz64L0Jyd7yN6c9UfyR
	MVACNqvuvrNzJGqqo77EbPMxv647AU8N8FQsTj6qJutICf32LbbBH58/MKFfLDl493/E9ymb6HB
	c=
X-Gm-Gg: AYBFou1FPm5fd5dEjPOGaV3urYApqoXAu+Fgmh3/+FW+VmOdm11trmsKHbWtaVxNRo0
	zWX+XqrbnoVwByNTUyNlWNLx5HFRc1XxoIxHSYczf1qfZUt+YmiQ0CvatKC5HNcxN5vp3z2aJy9
	iVUGclmwaDF6IRBQiBWxeB2V2oKpRYPSIPwICtfJGUXgCNYvZRQ01lWInM65Xw9FvfPEQdycgRX
	O5cR5KTYp+zrHIcFXtGXgyiO2b/gAcmAJCLV0hCPSxDKg70lrOQsPUD63FPWI2OGutdscmXWM40
	i0UAE96FqNqayBo0wAbrnkBIW7VdO4PXwqH9GTh87qZaiKpeXO5Qhbuw6DEqsfFu+BHE+gTE6B0
	qF/S/W5i/jGKhgDiUP5oCSycrIAiDCV9ClqjI9I8b3ewMJD4bfQ89QwLQawF7ig==
X-Received: by 2002:a05:620a:2b91:b0:93f:6e05:22eb with SMTP id af79cd13be357-940ef8f9253mr1634334285a.48.1793117886934;
        Tue, 27 Oct 2026 09:18:06 -0700 (PDT)
X-Received: by 2002:a05:620a:2b91:b0:93f:6e05:22eb with SMTP id af79cd13be357-940ef8f9253mr1634328585a.48.1793117886452;
        Tue, 27 Oct 2026 09:18:06 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:7d20:e20f:a77f:4ef7? ([2a05:6e02:1041:c10:7d20:e20f:a77f:4ef7])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e3ecd8ddasm25927477f8f.48.2026.10.27.09.18.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2026 09:18:05 -0700 (PDT)
Message-ID: <8e53d1a3-fc96-4d07-8be7-74f383ed3618@oss.qualcomm.com>
Date: Tue, 27 Oct 2026 17:18:04 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/6] selftests/powercap: Add powercap hierarchy
 creation API tests
To: "Rafael J. Wysocki (Intel)" <rafael@kernel.org>
Cc: Daniel Lezcano <daniel.lezcano@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Shuah Khan <shuah@kernel.org>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kselftest@vger.kernel.org,
        Thomas Huth <thuth@redhat.com>, Vasily Gorbik <gor@linux.ibm.com>
References: <cover.1792504834.git.daniel.lezcano@oss.qualcomm.com>
 <83799bf79e85e9e2ab77140e632f11d96b17a04f.1792504834.git.daniel.lezcano@oss.qualcomm.com>
 <CAJZ5v0gSLOP4KN3bNB425SaYOLcpJ1c3t5isYEQAdvxqQR0sVQ@mail.gmail.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
In-Reply-To: <CAJZ5v0gSLOP4KN3bNB425SaYOLcpJ1c3t5isYEQAdvxqQR0sVQ@mail.gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI3MDA2NCBTYWx0ZWRfX9vKMYOEekb/V
 W4HQnfWUucpga2mONbnBXv3s2iRoj1mlWNT6YeQ+T57oBR0I+p0v2WbX0Nj2UaiMqcBIjIFUTE4
 bzv8CgWfnVTuw8Qghpxagt3ZKUL9ba5v74QbRL9qQaQz/vftkpXLP+hGl+UdpQxA5fIVMmGAAwN
 g82G587327qa63PFRCXsvftmuqJu3s9At+S0M1shAJ8rqMsb/2E3H/6D98JS9jz+494Sgcs/SjV
 gIXG7O2lwMl+lSzLLk5g2OkcUvIsCh5J4YbWMPnjJeQRWMZsVIZxjwkezK4xbvr30fbUp8ptaDq
 NNLwpwBKChNVdRC4aSDa262n2b0lwMrVm366fa1egzkMuPexA1Has26V49JuTArazPRTv/rVp7+
 DHgGpgb2YzyJ1YvRmI5PglfybVw0M0cZVxBum1pNrsC/5Xeo65yoESQRy0gL1LBRyD0+D9XHiqt
 dv9t5JYSa7K52Yw1G1Q==
X-Proofpoint-GUID: Gy-7wn-GE9KZKg9ZvncDz9HGoAqp7pvq
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI3MDA2NCBTYWx0ZWRfX8P4CfOFNPJG4
 ktgakyGTS7qAjNup65ZpVssNpnzMwP033BASB4EDw73OwXckT4GTigdR6s0iIKFqnkKOmv5V+in
 Fg/v3hGj8BU2yCxxpMC5NnhN3EDG44g=
X-Authority-Analysis: v=2.4 cv=PsYG/AM3 c=1 sm=1 tr=0 ts=6ae0cebf cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=bC-a23v3AAAA:8
 a=EUspDBNiAAAA:8 a=c92rfblmAAAA:8 a=82gYmaJqspjqQrwE4UoA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=FO4_E8m0qiDe52t0p3_H:22
 a=GvGzcOZaWPEFPQC_NcjD:22
X-Proofpoint-ORIG-GUID: Gy-7wn-GE9KZKg9ZvncDz9HGoAqp7pvq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-27_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 phishscore=0 adultscore=0 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 impostorscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610270064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_091809_470942_1FABB3D7 
X-CRM114-Status: GOOD (  16.41  )
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
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTAvMjcvMjYgMTc6MTAsIFJhZmFlbCBKLiBXeXNvY2tpIChJbnRlbCkgd3JvdGU6Cj4gT24g
VHVlLCBPY3QgMjAsIDIwMjYgYXQgNDoxOOKAr1BNIERhbmllbCBMZXpjYW5vCj4gPGRhbmllbC5s
ZXpjYW5vQG9zcy5xdWFsY29tbS5jb20+IHdyb3RlOgo+Pgo+PiBUaGUgcG93ZXJjYXAgaGllcmFy
Y2h5IEFQSSBpbnRyb2R1Y2VzIGdlbmVyaWMgaGVscGVycyB0byBkdXBsaWNhdGUsCj4+IGluc3Rh
bnRpYXRlIGFuZCBkZXN0cm95IGEgY29tcGxldGUgcG93ZXJjYXAgaGllcmFyY2h5IGZyb20gYSBz
dGF0aWMKPj4gZGVzY3JpcHRpb24uCj4+Cj4+IEFkZCBhIGtzZWxmdGVzdCBleGVyY2lzaW5nIHRo
aXMgQVBJLiBUaGUgdGVzdCBidWlsZHMgYSBzeW50aGV0aWMKPj4gcG93ZXJjYXAgaGllcmFyY2h5
IGNvbXBvc2VkIG9mIGEgcGFja2FnZSwgdGhyZWUgQ1BVIGNsdXN0ZXJzIGFuZCB0d2VsdmUKPj4g
Q1BVcywgcmVnaXN0ZXJzIGl0IGFzIGEgcG93ZXJjYXAgY29udHJvbCB0eXBlIGFuZCBjaGVja3Mg
dGhlIHpvbmUgY291bnQKPj4gYW5kIHNlbGVjdGVkIHN5c2ZzIGF0dHJpYnV0ZSB2YWx1ZXMuIEl0
IGFsc28gY2hlY2tzIHRoYXQgdGhlIGNvbnRyb2xsZXIKPj4gZGlyZWN0b3J5IGRpc2FwcGVhcnMg
d2hlbiB0aGUgbW9kdWxlIGlzIHVubG9hZGVkLgo+Pgo+PiBFeGVyY2lzZSBkaXJlY3Qgc3RhdGlj
IGNyZWF0aW9uLCBkdXBsaWNhdGlvbiwgc2tpcHBlZCBjbHVzdGVycyBhbmQgdGhlaXIKPj4gZGVz
Y2VuZGFudHMsIHJldXNlIGFmdGVyIHBhcnRpYWwgZGVzdHJ1Y3Rpb24sIGFuZCByZXBlYXRlZCBj
cmVhdGlvbgo+PiByZXR1cm5pbmcgLUVCVVNZIHdpdGhvdXQgcmVwbGFjaW5nIGV4aXN0aW5nIHpv
bmUgcG9pbnRlcnMuIENhbGxiYWNrCj4+IGNoZWNrcyB2ZXJpZnkgdGhlIGNvbnRyb2xsZXIsIG5h
bWUgYW5kIGJhY2tlbmQtcHJpdmF0ZSBkYXRhIHN1cHBsaWVkIGJ5Cj4+IHRoZSBoZWxwZXJzLgo+
Pgo+PiBUaGUgdGVzdCBjb25zaXN0cyBvZjoKPj4KPj4gKiBhIGtlcm5lbCBtb2R1bGUgaW1wbGVt
ZW50aW5nIGEgc3ludGhldGljIHBvd2VyY2FwIGhpZXJhcmNoeSBhbmQKPj4gICAgZHVtbXkgY2Fs
bGJhY2tzOwo+PiAqIGEgdXNlcnNwYWNlIGtzZWxmdGVzdCBzY3JpcHQgdGhhdCBsb2FkcyB0aGUg
bW9kdWxlLCBjaGVja3MgMTYgem9uZXMKPj4gICAgYW5kIHRoZWlyIHBvd2VyIGFuZCBjb25zdHJh
aW50IGF0dHJpYnV0ZXMsIHVubG9hZHMgdGhlIG1vZHVsZSB3aXRoIGFuCj4+ICAgIGF0dHJpYnV0
ZSBkZXNjcmlwdG9yIG9wZW4sIGFuZCBjaGVja3MgY29udHJvbGxlciByZW1vdmFsLgo+Pgo+PiBV
c2UgcG93ZXJjYXAtb3duZWQgem9uZSBhbGxvY2F0aW9ucyBzbyByZWdpc3RyYXRpb24gZmFpbHVy
ZXMgYXJlIGNsZWFuZWQKPj4gdXAgYnkgdGhlIGNvcmUuIEJ1aWxkIGdlbmVyYXRlZCBtb2R1bGUg
ZmlsZXMgaW4gdGhlIHNlbGZ0ZXN0IG91dHB1dAo+PiBkaXJlY3RvcnkgYW5kIGV4dGVuZCB0aGUg
Y29tbW9uIGNsZWFuIHRhcmdldCB3aXRoIEtidWlsZCBtb2R1bGUgY2xlYW51cC4KPj4KPj4gVGhp
cyBwcm92aWRlcyBhIHJlZ3Jlc3Npb24gdGVzdCBmb3IgdGhlIHBvd2VyY2FwIGhpZXJhcmNoeSBo
ZWxwZXJzIGFuZAo+PiB0aGVpciBpbnRlZ3JhdGlvbiB3aXRoIHRoZSBwb3dlcmNhcCBjb3JlLgo+
Pgo+PiBDYzogTWFuYWYgTWVldGhhbGF2YWxhcHB1IFBhbGxpa3VuaGkgPG1hbmFmLnBhbGxpa3Vu
aGlAb3NzLnF1YWxjb21tLmNvbT4KPj4gTGluazogaHR0cHM6Ly9wYXRjaC5tc2dpZC5saW5rLzIw
MjYwODA2MTEwMTU5LjY5NjkwLTMtZGFuaWVsLmxlemNhbm9Ab3NzLnF1YWxjb21tLmNvbQo+PiBB
c3Npc3RlZC1ieTogTExNCj4+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBMZXpjYW5vIDxkYW5pZWwu
bGV6Y2Fub0Bvc3MucXVhbGNvbW0uY29tPgo+IAo+IFNhc2hpa28gaXMgY29tcGxhaW5pbmcgYWJv
dXQgdGhpcyBvbmUgbm93Ogo+IAo+IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC9jb3Zl
ci4xNzkyNTA0ODM0LmdpdC5kYW5pZWwubGV6Y2FubyU0MG9zcy5xdWFsY29tbS5jb20KClRoYW5r
cywgSSdsbCBoYXZlIGEgbG9vawoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
