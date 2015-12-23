From: Russell King - ARM Linux <linux@arm.linux.org.uk>
Subject: Re: [PATCH v2 0/2] Improve drm_of_component_probe() and move
 rockchip to use it
Date: Wed, 23 Dec 2015 18:59:48 +0000
Message-ID: <20151223185948.GT8644@n2100.arm.linux.org.uk>
References: <1448029325-14602-1-git-send-email-Liviu.Dudau@arm.com>
 <20151222173800.GU960@e106497-lin.cambridge.arm.com>
 <20151223103906.2aae53595345240d57d57b41@free.fr>
 <20151223100534.GW960@e106497-lin.cambridge.arm.com>
 <20151223182033.a52356408b9a81e9497464e7@free.fr>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
Content-Disposition: inline
In-Reply-To: <20151223182033.a52356408b9a81e9497464e7@free.fr>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Jean-Francois Moine <moinejf@free.fr>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, Liviu Dudau <Liviu.Dudau@arm.com>, LKML <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, linux-rockchip <linux-rockchip@lists.infradead.org>, LAKML <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

T24gV2VkLCBEZWMgMjMsIDIwMTUgYXQgMDY6MjA6MzNQTSArMDEwMCwgSmVhbi1GcmFuY29pcyBN
b2luZSB3cm90ZToKPiBPbiBXZWQsIDIzIERlYyAyMDE1IDEwOjA1OjM0ICswMDAwCj4gTGl2aXUg
RHVkYXUgPExpdml1LkR1ZGF1QGFybS5jb20+IHdyb3RlOgo+IAo+ID4gPiBXaGF0IHdhcyB0aGUg
cmVhc29uIHRvIGtlZXAgdGhlICJwb3J0cyIgbm9kZSBpbnN0ZWFkIG9mIHRoZSBkZXZpY2U/Cj4g
PiAKPiA+IFRoZSBmdW5jdGlvbiBpcyBhbiBleHRyYWN0IG9mIGNvbW1vbiBjb2RlIHNwcmlua2xl
ZCB0aHJvdWdoIGEgZmV3IERSTSBkcml2ZXJzLAo+ID4gdGhleSBhbGwgdXNlZCBwb3J0IHJhdGhl
ciB0aGFuIHBvcnQtPnBhcmVudC4KPiAKPiBTb3JyeSBmb3IgSSBjb3VsZCBmaW5kIHN1Y2ggZHJp
dmVycy4gTWF5IHlvdSBnaXZlIG1lIGFueSBwb2ludGVyPwoKaW14LWRybSBwcm9iYWJseS4KCj4g
PiBIYXZlIGEgbG9vayBhdCBteSB2MiB3aGVyZSBJJ3ZlIGludHJvZHVjZWQgdHdvIGNvbXBhcmUg
ZnVuY3Rpb25zIGFuZCBhbHNvCj4gPiBtb2RpZmllZCB0aGUgUm9ja2NoaXAgY29tcGFyZV9wb3J0
KCkgdG8gdXNlIHBvcnQtPnBhcmVudCBpbiB0aGUgY29tcGFyaXNvbi4gSQo+ID4gZ3Vlc3MgdGhh
dCBzaG91bGQgc29sdmUgeW91ciBwcm9ibGVtLgo+IAo+IEtlZXBpbmcgdGhlIHBvcnQgaW5zdGVh
ZCBvZiB0aGUgcGFyZW50IGFza3MgZm9yIG1vcmUgY29kZSwgYnV0LAo+IGVzcGVjaWFsbHksIGl0
IGFsc28gYXNrcyBmb3IgY2hhbmdlcyBpbiB0aGUgY29tcG9uZW50IGRyaXZlcnMgYmVjYXVzZSwK
PiBhdCBiaW5kIHRpbWUsIGluICdkYXRhJywgdGhleSBnZXQgYSBwb3J0IGluc3RlYWQgb2YgdGhl
IGRldmljZS4KClNvcnJ5LCB0aGlzIGRvZXNuJ3QgbWFrZSBzZW5zZS4gIFlvdSBoYXZlIGZhciB0
b28gbWFueSBzdWItY2xhdXNlcwp3aGljaCBtZWFuIG5vdGhpbmcgYXQgYWxsLiAgUGxlYXNlIHJl
cGhyYXNlLgoKLS0gClJNSydzIFBhdGNoIHN5c3RlbTogaHR0cDovL3d3dy5hcm0ubGludXgub3Jn
LnVrL2RldmVsb3Blci9wYXRjaGVzLwpGVFRDIGJyb2FkYmFuZCBmb3IgMC44bWlsZSBsaW5lOiBj
dXJyZW50bHkgYXQgOS42TWJwcyBkb3duIDQwMGticHMgdXAKYWNjb3JkaW5nIHRvIHNwZWVkdGVz
dC5uZXQuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRy
aS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==
