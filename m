Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABC73606A323
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 18:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=wJ7mIISp;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=IpV8/bXk;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=TStF3xdk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=hOu5tsR0zECSIPOWBIzlbnci4ffaEn6giQVs+ObhGtg=; b=wJ7mIISpMdtpboAoQZYB7cakhA
	qBTIF8WLuzlrqOZszuaOEYmm1CeIwb54HWsa/IuGhLc1RRP7oN0l66hbXu2CairSMFP0o1Jeg+Xrg
	Njaxgdzm88qKCSmmo0WxX5V5xfl/hHklSP++TZOYfrmsYheBN80tbugUmlDwpax+XQgmnSNuU8S6o
	iMEwnmalpBeFejNIrUwj9i5T7eqooTzR6XzrY1ACBReT9wxM3DWQNEfzZVcXpM2joEllSx12uz6aV
	iZGdP+3tDt3y7/TFUwkR/EWm6rZHhyHhBzC78gzEL8EQ2fAHRvd5Q0O2c4LVK4Y/YwETfrNjo4PjR
	zcmCIYww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRZ9A-0000000Apvj-0AYb;
	Thu, 12 Nov 2026 18:03:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRZ97-0000000Aput-2IFB
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Nov 2026 18:03:38 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ACFZO8P2593688
	for <linux-rockchip@lists.infradead.org>; Thu, 12 Nov 2026 18:03:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	is1IjOBk13wV8pAnUUZXWALQm5FmYZmf98T0QXm6I/k=; b=IpV8/bXkpYXuHKVf
	kdWRRPY9OgvhYkjJ9MVBevP/Md7oek15QRAzpgkKf6CHE1OCUKr19RE/4q+x532M
	2Ic/9mkFsJWPZIKBqrbIP0w8fv5tkqveh/hZIyy2EtfZsa4+9Oas4kRJB164knVa
	MhJ6VK1S576kZjFjLSxjcfYD3ot+JTaY8Ojpjdhne7Oy4qaTjBKwU203HqTpXH53
	W4jdkp0kMzDJXwkt4Z/w2XTg+WzfskLVhG96XXTA8+1HBP56Bz6aOgO8YDD9iZkG
	NEOBRQIBENPXEKUZ7+6EfvuhZFhGPuTuO/EWfq8vvOL35D+V+RDButzh2h6Kaxom
	d7TN9Q==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hwbx31nup-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 12 Nov 2026 18:03:36 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5ec3e192929so42545e0c.2
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Nov 2026 10:03:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794506616; x=1795111416; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=is1IjOBk13wV8pAnUUZXWALQm5FmYZmf98T0QXm6I/k=;
        b=TStF3xdk1EejuR2vNogEqFtv9klQYbsWnxWZ9kL3p5e5YnECKINlkck3kqjxxEv0d7
         mfFdBSHhEqtcriS1mUOrjNqJTOtyMLpDkOQtwY1mlHQs94auuPaakHHckLVzzLkMcV2G
         cJ+e02F7RuJaRA29hah63YJ9V7IxyTvb1kmzFoXnGZU3F+s0JFLOHvZHd0TVVwqFFBAR
         t/JUi7IlgcEL5b5dec0CC7IgqJtCj1PCLiKYgK8QNsOudc8VDGmswdFZyePk2haOnuo6
         nTXimiZ4vGeiQmjNZloj9vRXSwdwsEBocAo8//PLERjTmx+8BciJ8UHKUyKpb5AaIhew
         vH0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794506616; x=1795111416;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=is1IjOBk13wV8pAnUUZXWALQm5FmYZmf98T0QXm6I/k=;
        b=OqtCuAxN1Xffo4RqkXTENi/wV9jHoV0fqyzMUy87ef8+3rjk0AcXagitSHcPsG9Ts7
         zeh0iHQ24D5ZbdC84S1GXV4GzyzZlscXdLMRAKDVX7kytYojYMStI7qTyU7AvTciJBVX
         jFwRHA/jCc67CrQDMvBXKwW0yzwMycSCw4WBasZ/ZC4pe9cbObq/S/I1z2KrompAr8Pa
         Qa3q2rp4rMT/wz5PlLTqCgym0FUwwY5PD50v7jYbCfXkI00cJdIFzQoG9Cz8wHtYrSMp
         nOZCpbyu3nmONyJyJ49wfwJc/84Kx12ZJCAsxVW6s4MJdIX9jyoqHwcUEqjZoDK2kHls
         ZzGg==
X-Forwarded-Encrypted: i=1; AL+hErHq4CPImPnEE/VYZEq86jfWSeVdfmZoegudQI440rAcrWAZN6e1fYQXX3zwxYusk+CSxLIbRudQy3f3VfpvGA==@lists.infradead.org
X-Gm-Message-State: APuU4Z+GI9PaslHpTAU5ADrBICNCvPZBT3PemJ8MvksptXbAetYhUSqf
	CSgw5s+hAWg2oOQZWwPicAWjhzqc0ICW3WHofEUvixsBErhqMC1SmSwZJZSom3a8g3zKE6Vx3NT
	md8Xa41XUN4PsvbLZFMp9riG8IgWtY/5xi2y+BZ3fXK2ipL5Eq8Jbl/3Dz7irdhIU3h4gZ8pBWF
	I=
X-Gm-Gg: AYBFou2aVbqky9K5zViBDPtfcVKx8JrO00V9iffEBfHKUsBvxd4ktEN55AkQuWwXtKz
	YCD246QrEPS1vgPwP/fD2n+6zkMx975LoBfcerh1EO/Ik4YnbkfQFBwEydS2xCmyUzNOp0zDjht
	Tq9MCOTjyjLRMgYNtby5PQafSBkGXVY0QZYDLK41H0wyLa8HS9GOhF1g8KVBXqI902/v/6nFaA+
	MF5GpgYc0jNeohDAOSwUib/pykPO+ZWNhu/oHAX6pPoCwSN/HTeZtktQew6FizaXCVC4jO0/eFp
	1z3CPUfdA0WokjiqWJuPd4xxJ2hIcOZo092WUJFLUevwtfzlE98JcraOzEklHzohI5VpAh2GF17
	IfeS0mqy1z/sp7Ai+4mXDx7UEg4/f9HlhtcXGAA3Y+iLUBPQieV1T2qPirqokUDyYdC6CpKL0qk
	7+OlI1mlkUfip8vgDKqxrscVdCnUSpe6KRYSQ=
X-Received: by 2002:a05:6122:3d06:b0:5ec:3e18:a912 with SMTP id 71dfb90a1353d-5ee1c41a938mr2612954e0c.14.1794506615451;
        Thu, 12 Nov 2026 10:03:35 -0800 (PST)
X-Received: by 2002:a05:6122:3d06:b0:5ec:3e18:a912 with SMTP id 71dfb90a1353d-5ee1c41a938mr2612929e0c.14.1794506614860;
        Thu, 12 Nov 2026 10:03:34 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:7d20:e20f:a77f:4ef7? ([2a05:6e02:1041:c10:7d20:e20f:a77f:4ef7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb4e2acf81sm80058415e9.14.2026.11.12.10.03.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2026 10:03:32 -0800 (PST)
Message-ID: <d30df23c-c1f4-4a7d-a56d-33c1f9e1a6f7@oss.qualcomm.com>
Date: Thu, 12 Nov 2026 19:03:31 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] smpboot: Allow restricting per-CPU threads to a CPU
 mask
To: Thomas Gleixner <tglx@kernel.org>, akpm@linux-foundation.org,
        rafael@kernel.org, peterz@infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
        "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
        "open list:CPU HOTPLUG" <linux-kernel@vger.kernel.org>
References: <cover.1793660202.git.daniel.lezcano@oss.qualcomm.com>
 <af37c4e7811a86adafb2064e7cf4aa4f5090ab4b.1793660202.git.daniel.lezcano@oss.qualcomm.com>
 <87zeverlrs.ffs@fw13>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
In-Reply-To: <87zeverlrs.ffs@fw13>
X-Authority-Analysis: v=2.4 cv=S+5MU4sP c=1 sm=1 tr=0 ts=6af5ff78 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=A-cxFYNZenKyrZAO6n4A:9
 a=QEXdDO2ut3YA:10 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEyMDA3MSBTYWx0ZWRfXxgt2l00ZGPqP
 CIuii0J4f9dQCRE7ueAnsv7+stf3cRBCVpwoTxvXQk370vAsnohyBkxOF6Xt2nYyytQSa/5WSfy
 ilgm8PeIBjHTforElNdftnwkbYnqhPD4eeFE4Xqiclec5xlpB27ojGEvRqOm+Psmj8QqSe/V52j
 lnVgNam5Rkq5Jal6SwwkSbBCSQfYZ4JmOo5PUuOE0YxOHQG0MYHl6nQUBxp38mkDFO6Zfx2IBsS
 oPQcptUeuXEOOmKNfpZ/Cg+IN3vxLYEqYd/Bnf0NWy/kx6uih6/SvdGoCumbjum301SE5owRwh3
 bimwcs6zI9K/aEqrYvjkKMa7RPvVjLoeJbKOn62mtobpzPQ9BIJxVgIvXfjA58DVCpq4+tEJUuv
 ucrY+eBYHpX9yqCnH9okEgs4zmpMryL3PxrV0obGl4V8Z1Is6/ZeXisRnsfXoPMUDOd5dFftSQc
 9oznUXxqBd7llI3TlKA==
X-Proofpoint-ORIG-GUID: QaZfcSH1vZTqzGSlrQA1uKKEiLmBj7co
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEyMDA3MSBTYWx0ZWRfX4OyOMBMnV5jU
 g9flK6zQgDsk4Pxvv3+0i50uThYsXNz7OnAjGohPk7wMp7RVZ6RR548/UnHhCGpABUpDNyWXaMK
 A33ORyIkrW6YIpl/vR7L+KYi3Dth8mg=
X-Proofpoint-GUID: QaZfcSH1vZTqzGSlrQA1uKKEiLmBj7co
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-12_02,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 clxscore=1015 phishscore=0 malwarescore=0
 adultscore=0 spamscore=0 suspectscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611120071
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_100337_594325_FA7530B2 
X-CRM114-Status: GOOD (  16.30  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


Hi Thomas,

thanks for reviewing the patch

On 11/12/26 18:40, Thomas Gleixner wrote:
> On Tue, Nov 03 2026 at 00:09, Daniel Lezcano wrote:
>> smpboot_register_percpu_thread() creates a thread for every online CPU
>> and registers the descriptor for subsequent CPU hotplug operations.
>> There is currently no way to restrict these threads to a subset of
>> CPUs, even when the user only needs work performed on that subset.
>>
>> For example, an idle injection device targets a specific CPU mask.
>> Creating threads outside that mask consumes resources unnecessarily.
>> Supporting multiple such devices also requires each descriptor to
>> manage only the threads associated with its own CPUs.
>>
>> Add an optional CPU mask to struct smp_hotplug_thread and apply it
>> throughout the thread lifecycle. Registration creates threads only for
>> online CPUs in the mask. CPU bring-up creates threads for selected
>> CPUs that were offline at registration, while parking and unparking
>> are restricted to the same mask.
>>
>> Apply the restriction to thread destruction as well, both during
>> unregistration and registration failure cleanup. This is necessary
>> when descriptors with disjoint masks share the same per-CPU task
>> storage: tearing down one descriptor must not stop or clear threads
>> owned by another descriptor.
>>
>> The caller must keep the mask valid and unchanged until the descriptor
>> is unregistered. Callers sharing per-CPU task storage must ensure their
>> masks do not overlap and serialize ownership changes themselves.
> 
> This really wants a built-in check which prevents overlapping
> registrations for the same thread storage. It's easy enough to do:
> 
> smpboot_register_percpu_thread()
> 
> 	if (!pt->cpumask)
> 		pt->cpu_mask = cpu_possible_mask;
> 
> 	guard(cpus_read_lock)();
>          guard(mutex)(&smpboot_threads_lock);
>          list_for_each_entry(ht, &hotplug_threads, list) {
> 		if (ht->store != pt->store)
>                  	continue;
>                  if (WARN_ON_ONCE(cpumask_intersects(ht->cpumask, pt->cpumask)))
>                  	return -EBUSY;
>          }
>                  
> Hmm?
Yes, I agree it will prevent strange things happening

Thanks for the suggestion

   -- Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
